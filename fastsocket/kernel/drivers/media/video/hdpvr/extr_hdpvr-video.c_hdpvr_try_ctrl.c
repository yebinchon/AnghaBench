
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct v4l2_ext_control {int id; int value; } ;


 int EINVAL ;






 int V4L2_MPEG_AUDIO_ENCODING_AAC ;
 int V4L2_MPEG_AUDIO_ENCODING_AC3 ;
 int V4L2_MPEG_STREAM_TYPE_MPEG2_TS ;
 int V4L2_MPEG_VIDEO_BITRATE_MODE_CBR ;
 int V4L2_MPEG_VIDEO_BITRATE_MODE_VBR ;
 int V4L2_MPEG_VIDEO_ENCODING_MPEG_4_AVC ;

__attribute__((used)) static int hdpvr_try_ctrl(struct v4l2_ext_control *ctrl, int ac3)
{
 int ret = -EINVAL;

 switch (ctrl->id) {
 case 133:
  if (ctrl->value == V4L2_MPEG_AUDIO_ENCODING_AAC ||
      (ac3 && ctrl->value == V4L2_MPEG_AUDIO_ENCODING_AC3))
   ret = 0;
  break;
 case 128:
  if (ctrl->value == V4L2_MPEG_VIDEO_ENCODING_MPEG_4_AVC)
   ret = 0;
  break;




 case 130:
  if (ctrl->value == V4L2_MPEG_VIDEO_BITRATE_MODE_CBR ||
      ctrl->value == V4L2_MPEG_VIDEO_BITRATE_MODE_VBR)
   ret = 0;
  break;
 case 131:
 {
  uint bitrate = ctrl->value / 100000;
  if (bitrate >= 10 && bitrate <= 135)
   ret = 0;
  break;
 }
 case 129:
 {
  uint peak_bitrate = ctrl->value / 100000;
  if (peak_bitrate >= 10 && peak_bitrate <= 202)
   ret = 0;
  break;
 }
 case 132:
  if (ctrl->value == V4L2_MPEG_STREAM_TYPE_MPEG2_TS)
   ret = 0;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
