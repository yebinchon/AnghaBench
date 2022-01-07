
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_queryctrl {int id; int flags; } ;
struct saa6752hs_mpeg_params {int vi_bitrate_mode; } ;
struct saa6752hs_state {int has_ac3; struct saa6752hs_mpeg_params params; } ;


 int EINVAL ;
 int V4L2_CTRL_FLAG_INACTIVE ;
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
 int V4L2_MPEG_VIDEO_BITRATE_MODE_CBR ;
 int V4L2_MPEG_VIDEO_BITRATE_MODE_VBR ;
 int V4L2_MPEG_VIDEO_ENCODING_MPEG_2 ;
 struct saa6752hs_state* to_state (struct v4l2_subdev*) ;
 int v4l2_ctrl_query_fill (struct v4l2_queryctrl*,int,int,int,int) ;

__attribute__((used)) static int saa6752hs_queryctrl(struct v4l2_subdev *sd, struct v4l2_queryctrl *qctrl)
{
 struct saa6752hs_state *h = to_state(sd);
 struct saa6752hs_mpeg_params *params = &h->params;
 int err;

 switch (qctrl->id) {
 case 140:
  return v4l2_ctrl_query_fill(qctrl,
    V4L2_MPEG_AUDIO_ENCODING_LAYER_2,
    h->has_ac3 ? V4L2_MPEG_AUDIO_ENCODING_AC3 :
     V4L2_MPEG_AUDIO_ENCODING_LAYER_2,
    1, V4L2_MPEG_AUDIO_ENCODING_LAYER_2);

 case 139:
  return v4l2_ctrl_query_fill(qctrl,
    V4L2_MPEG_AUDIO_L2_BITRATE_256K,
    V4L2_MPEG_AUDIO_L2_BITRATE_384K, 1,
    V4L2_MPEG_AUDIO_L2_BITRATE_256K);

 case 141:
  if (!h->has_ac3)
   return -EINVAL;
  return v4l2_ctrl_query_fill(qctrl,
    V4L2_MPEG_AUDIO_AC3_BITRATE_256K,
    V4L2_MPEG_AUDIO_AC3_BITRATE_384K, 1,
    V4L2_MPEG_AUDIO_AC3_BITRATE_256K);

 case 138:
  return v4l2_ctrl_query_fill(qctrl,
    V4L2_MPEG_AUDIO_SAMPLING_FREQ_48000,
    V4L2_MPEG_AUDIO_SAMPLING_FREQ_48000, 1,
    V4L2_MPEG_AUDIO_SAMPLING_FREQ_48000);

 case 128:
  return v4l2_ctrl_query_fill(qctrl,
    V4L2_MPEG_VIDEO_ENCODING_MPEG_2,
    V4L2_MPEG_VIDEO_ENCODING_MPEG_2, 1,
    V4L2_MPEG_VIDEO_ENCODING_MPEG_2);

 case 132:
  return v4l2_ctrl_query_fill(qctrl,
    V4L2_MPEG_VIDEO_ASPECT_4x3,
    V4L2_MPEG_VIDEO_ASPECT_16x9, 1,
    V4L2_MPEG_VIDEO_ASPECT_4x3);

 case 129:
  err = v4l2_ctrl_query_fill(qctrl, 0, 27000000, 1, 8000000);
  if (err == 0 &&
      params->vi_bitrate_mode ==
    V4L2_MPEG_VIDEO_BITRATE_MODE_CBR)
   qctrl->flags |= V4L2_CTRL_FLAG_INACTIVE;
  return err;

 case 133:
  return v4l2_ctrl_query_fill(qctrl,
    V4L2_MPEG_STREAM_TYPE_MPEG2_TS,
    V4L2_MPEG_STREAM_TYPE_MPEG2_TS, 1,
    V4L2_MPEG_STREAM_TYPE_MPEG2_TS);

 case 130:
  return v4l2_ctrl_query_fill(qctrl,
    V4L2_MPEG_VIDEO_BITRATE_MODE_VBR,
    V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, 1,
    V4L2_MPEG_VIDEO_BITRATE_MODE_VBR);
 case 131:
  return v4l2_ctrl_query_fill(qctrl, 0, 27000000, 1, 6000000);
 case 135:
  return v4l2_ctrl_query_fill(qctrl, 0, (1 << 14) - 1, 1, 16);
 case 137:
  return v4l2_ctrl_query_fill(qctrl, 0, (1 << 14) - 1, 1, 260);
 case 134:
  return v4l2_ctrl_query_fill(qctrl, 0, (1 << 14) - 1, 1, 256);
 case 136:
  return v4l2_ctrl_query_fill(qctrl, 0, (1 << 14) - 1, 1, 259);

 default:
  break;
 }
 return -EINVAL;
}
