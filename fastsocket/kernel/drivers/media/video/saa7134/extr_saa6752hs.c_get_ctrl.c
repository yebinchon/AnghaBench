
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_control {int id; int value; } ;
struct saa6752hs_mpeg_params {int ts_pid_pmt; int ts_pid_audio; int ts_pid_video; int ts_pid_pcr; int au_encoding; int au_l2_bitrate; int au_ac3_bitrate; int vi_aspect; int vi_bitrate; int vi_bitrate_peak; int vi_bitrate_mode; } ;


 int EINVAL ;
 int V4L2_MPEG_AUDIO_SAMPLING_FREQ_48000 ;
 int V4L2_MPEG_STREAM_TYPE_MPEG2_TS ;
 int V4L2_MPEG_VIDEO_ENCODING_MPEG_2 ;

__attribute__((used)) static int get_ctrl(int has_ac3, struct saa6752hs_mpeg_params *params,
  struct v4l2_ext_control *ctrl)
{
 switch (ctrl->id) {
 case 133:
  ctrl->value = V4L2_MPEG_STREAM_TYPE_MPEG2_TS;
  break;
 case 135:
  ctrl->value = params->ts_pid_pmt;
  break;
 case 137:
  ctrl->value = params->ts_pid_audio;
  break;
 case 134:
  ctrl->value = params->ts_pid_video;
  break;
 case 136:
  ctrl->value = params->ts_pid_pcr;
  break;
 case 140:
  ctrl->value = params->au_encoding;
  break;
 case 139:
  ctrl->value = params->au_l2_bitrate;
  break;
 case 141:
  if (!has_ac3)
   return -EINVAL;
  ctrl->value = params->au_ac3_bitrate;
  break;
 case 138:
  ctrl->value = V4L2_MPEG_AUDIO_SAMPLING_FREQ_48000;
  break;
 case 128:
  ctrl->value = V4L2_MPEG_VIDEO_ENCODING_MPEG_2;
  break;
 case 132:
  ctrl->value = params->vi_aspect;
  break;
 case 131:
  ctrl->value = params->vi_bitrate * 1000;
  break;
 case 129:
  ctrl->value = params->vi_bitrate_peak * 1000;
  break;
 case 130:
  ctrl->value = params->vi_bitrate_mode;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
