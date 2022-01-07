
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint ;
struct v4l2_ext_control {int id; int value; } ;
struct hdpvr_options {int audio_codec; void* bitrate; void* peak_bitrate; int bitrate_mode; int audio_input; } ;
struct hdpvr_device {int flags; struct hdpvr_options options; } ;


 int CTRL_BITRATE_MODE_VALUE ;
 int EINVAL ;
 int HDPVR_CONSTANT ;
 int HDPVR_FLAG_AC3_CAP ;
 int HDPVR_VARIABLE_AVERAGE ;






 int V4L2_MPEG_VIDEO_BITRATE_MODE_CBR ;
 int V4L2_MPEG_VIDEO_BITRATE_MODE_VBR ;
 int hdpvr_config_call (struct hdpvr_device*,int ,int ) ;
 int hdpvr_set_audio (struct hdpvr_device*,int ,int) ;
 int hdpvr_set_bitrate (struct hdpvr_device*) ;

__attribute__((used)) static int hdpvr_set_ctrl(struct hdpvr_device *dev,
     struct v4l2_ext_control *ctrl)
{
 struct hdpvr_options *opt = &dev->options;
 int ret = 0;

 switch (ctrl->id) {
 case 133:
  if (dev->flags & HDPVR_FLAG_AC3_CAP) {
   opt->audio_codec = ctrl->value;
   ret = hdpvr_set_audio(dev, opt->audio_input,
           opt->audio_codec);
  }
  break;
 case 128:
  break;
 case 130:
  if (ctrl->value == V4L2_MPEG_VIDEO_BITRATE_MODE_CBR &&
      opt->bitrate_mode != HDPVR_CONSTANT) {
   opt->bitrate_mode = HDPVR_CONSTANT;
   hdpvr_config_call(dev, CTRL_BITRATE_MODE_VALUE,
       opt->bitrate_mode);
  }
  if (ctrl->value == V4L2_MPEG_VIDEO_BITRATE_MODE_VBR &&
      opt->bitrate_mode == HDPVR_CONSTANT) {
   opt->bitrate_mode = HDPVR_VARIABLE_AVERAGE;
   hdpvr_config_call(dev, CTRL_BITRATE_MODE_VALUE,
       opt->bitrate_mode);
  }
  break;
 case 131: {
  uint bitrate = ctrl->value / 100000;

  opt->bitrate = bitrate;
  if (bitrate >= opt->peak_bitrate)
   opt->peak_bitrate = bitrate+1;

  hdpvr_set_bitrate(dev);
  break;
 }
 case 129: {
  uint peak_bitrate = ctrl->value / 100000;

  if (opt->bitrate_mode == HDPVR_CONSTANT)
   break;

  if (opt->bitrate < peak_bitrate) {
   opt->peak_bitrate = peak_bitrate;
   hdpvr_set_bitrate(dev);
  } else
   ret = -EINVAL;
  break;
 }
 case 132:
  break;
 default:
  return -EINVAL;
 }
 return ret;
}
