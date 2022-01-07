
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_control {int id; int value; } ;
struct hdpvr_options {int audio_codec; int bitrate; int peak_bitrate; int bitrate_mode; } ;


 int EINVAL ;
 int HDPVR_CONSTANT ;






 int V4L2_MPEG_STREAM_TYPE_MPEG2_TS ;
 int V4L2_MPEG_VIDEO_BITRATE_MODE_CBR ;
 int V4L2_MPEG_VIDEO_BITRATE_MODE_VBR ;
 int V4L2_MPEG_VIDEO_ENCODING_MPEG_4_AVC ;

__attribute__((used)) static int hdpvr_get_ctrl(struct hdpvr_options *opt,
     struct v4l2_ext_control *ctrl)
{
 switch (ctrl->id) {
 case 133:
  ctrl->value = opt->audio_codec;
  break;
 case 128:
  ctrl->value = V4L2_MPEG_VIDEO_ENCODING_MPEG_4_AVC;
  break;



 case 130:
  ctrl->value = opt->bitrate_mode == HDPVR_CONSTANT
   ? V4L2_MPEG_VIDEO_BITRATE_MODE_CBR
   : V4L2_MPEG_VIDEO_BITRATE_MODE_VBR;
  break;
 case 131:
  ctrl->value = opt->bitrate * 100000;
  break;
 case 129:
  ctrl->value = opt->peak_bitrate * 100000;
  break;
 case 132:
  ctrl->value = V4L2_MPEG_STREAM_TYPE_MPEG2_TS;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
