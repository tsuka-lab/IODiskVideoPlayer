// Enable smoothing property on VideoDisplay class
// http://www.adobe.com/cfusion/communityengine/index.cfm?event=showdetails&postId=3561&productId=2

package custom
{
	import mx.controls.VideoDisplay;
	import mx.core.mx_internal;
	
	use namespace mx_internal;

	public class SmoothVideoDisplay extends VideoDisplay
	{
		private var _smoothing:Boolean = false;
		
		public function SmoothVideoDisplay()
		{
			super();
		}

		[Bindable]
		public function set smoothing(val:Boolean):void{
			if (val == _smoothing) return;
			_smoothing = val;
			videoPlayer.smoothing = _smoothing;
		}
		
		public function get smoothing():Boolean{
			return _smoothing;
		}		
	}
}