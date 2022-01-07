
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_control {int value; int id; } ;
struct saa6752hs_mpeg_params {int ts_pid_pmt; int ts_pid_audio; int ts_pid_video; int ts_pid_pcr; int au_encoding; int au_l2_bitrate; int au_ac3_bitrate; int vi_aspect; int vi_bitrate; int vi_bitrate_peak; int vi_bitrate_mode; } ;


 int EINVAL ;
 int ERANGE ;
 int MPEG_PID_MAX ;
 int MPEG_VIDEO_TARGET_BITRATE_MAX ;
 int V4L2_MPEG_AUDIO_AC3_BITRATE_256K ;
 int V4L2_MPEG_AUDIO_AC3_BITRATE_384K ;
 int V4L2_MPEG_AUDIO_ENCODING_AC3 ;
 int V4L2_MPEG_AUDIO_ENCODING_LAYER_2 ;
 int V4L2_MPEG_AUDIO_L2_BITRATE_256K ;
 int V4L2_MPEG_AUDIO_L2_BITRATE_384K ;
 int V4L2_MPEG_AUDIO_SAMPLING_FREQ_48000 ;
 int V4L2_MPEG_STREAM_TYPE_MPEG2_TS ;
 int V4L2_MPEG_VIDEO_ASPECT_16x9 ;
 int V4L2_MPEG_VIDEO_ASPECT_4x3 ;
 int V4L2_MPEG_VIDEO_ENCODING_MPEG_2 ;

__attribute__((used)) static int handle_ctrl(int has_ac3, struct saa6752hs_mpeg_params *params,
  struct v4l2_ext_control *ctrl, int set)
{
 int old = 0, new;

 new = ctrl->value;
 switch (ctrl->id) {
 case 133:
  old = V4L2_MPEG_STREAM_TYPE_MPEG2_TS;
  if (set && new != old)
   return -ERANGE;
  new = old;
  break;
 case 135:
  old = params->ts_pid_pmt;
  if (set && new > MPEG_PID_MAX)
   return -ERANGE;
  if (new > MPEG_PID_MAX)
   new = MPEG_PID_MAX;
  params->ts_pid_pmt = new;
  break;
 case 137:
  old = params->ts_pid_audio;
  if (set && new > MPEG_PID_MAX)
   return -ERANGE;
  if (new > MPEG_PID_MAX)
   new = MPEG_PID_MAX;
  params->ts_pid_audio = new;
  break;
 case 134:
  old = params->ts_pid_video;
  if (set && new > MPEG_PID_MAX)
   return -ERANGE;
  if (new > MPEG_PID_MAX)
   new = MPEG_PID_MAX;
  params->ts_pid_video = new;
  break;
 case 136:
  old = params->ts_pid_pcr;
  if (set && new > MPEG_PID_MAX)
   return -ERANGE;
  if (new > MPEG_PID_MAX)
   new = MPEG_PID_MAX;
  params->ts_pid_pcr = new;
  break;
 case 140:
  old = params->au_encoding;
  if (set && new != V4L2_MPEG_AUDIO_ENCODING_LAYER_2 &&
      (!has_ac3 || new != V4L2_MPEG_AUDIO_ENCODING_AC3))
   return -ERANGE;
  params->au_encoding = new;
  break;
 case 139:
  old = params->au_l2_bitrate;
  if (set && new != V4L2_MPEG_AUDIO_L2_BITRATE_256K &&
      new != V4L2_MPEG_AUDIO_L2_BITRATE_384K)
   return -ERANGE;
  if (new <= V4L2_MPEG_AUDIO_L2_BITRATE_256K)
   new = V4L2_MPEG_AUDIO_L2_BITRATE_256K;
  else
   new = V4L2_MPEG_AUDIO_L2_BITRATE_384K;
  params->au_l2_bitrate = new;
  break;
 case 141:
  if (!has_ac3)
   return -EINVAL;
  old = params->au_ac3_bitrate;
  if (set && new != V4L2_MPEG_AUDIO_AC3_BITRATE_256K &&
      new != V4L2_MPEG_AUDIO_AC3_BITRATE_384K)
   return -ERANGE;
  if (new <= V4L2_MPEG_AUDIO_AC3_BITRATE_256K)
   new = V4L2_MPEG_AUDIO_AC3_BITRATE_256K;
  else
   new = V4L2_MPEG_AUDIO_AC3_BITRATE_384K;
  params->au_ac3_bitrate = new;
  break;
 case 138:
  old = V4L2_MPEG_AUDIO_SAMPLING_FREQ_48000;
  if (set && new != old)
   return -ERANGE;
  new = old;
  break;
 case 128:
  old = V4L2_MPEG_VIDEO_ENCODING_MPEG_2;
  if (set && new != old)
   return -ERANGE;
  new = old;
  break;
 case 132:
  old = params->vi_aspect;
  if (set && new != V4L2_MPEG_VIDEO_ASPECT_16x9 &&
      new != V4L2_MPEG_VIDEO_ASPECT_4x3)
   return -ERANGE;
  if (new != V4L2_MPEG_VIDEO_ASPECT_16x9)
   new = V4L2_MPEG_VIDEO_ASPECT_4x3;
  params->vi_aspect = new;
  break;
 case 131:
  old = params->vi_bitrate * 1000;
  new = 1000 * (new / 1000);
  if (set && new > MPEG_VIDEO_TARGET_BITRATE_MAX * 1000)
   return -ERANGE;
  if (new > MPEG_VIDEO_TARGET_BITRATE_MAX * 1000)
   new = MPEG_VIDEO_TARGET_BITRATE_MAX * 1000;
  params->vi_bitrate = new / 1000;
  break;
 case 129:
  old = params->vi_bitrate_peak * 1000;
  new = 1000 * (new / 1000);
  if (set && new > MPEG_VIDEO_TARGET_BITRATE_MAX * 1000)
   return -ERANGE;
  if (new > MPEG_VIDEO_TARGET_BITRATE_MAX * 1000)
   new = MPEG_VIDEO_TARGET_BITRATE_MAX * 1000;
  params->vi_bitrate_peak = new / 1000;
  break;
 case 130:
  old = params->vi_bitrate_mode;
  params->vi_bitrate_mode = new;
  break;
 default:
  return -EINVAL;
 }
 ctrl->value = new;
 return 0;
}
