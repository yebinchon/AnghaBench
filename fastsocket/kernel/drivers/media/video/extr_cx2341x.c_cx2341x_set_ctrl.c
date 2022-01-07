
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_control {int id; int value; } ;
struct cx2341x_mpeg_params {int audio_sampling_freq; int capabilities; int audio_encoding; int audio_l2_bitrate; int audio_ac3_bitrate; int audio_mode; int audio_mode_extension; int audio_emphasis; int audio_crc; int audio_mute; int video_aspect; int video_gop_size; int video_b_frames; int video_gop_closure; int video_bitrate_mode; int video_bitrate; int video_bitrate_peak; int video_temporal_decimation; int video_mute; int video_mute_yuv; int stream_type; int stream_vbi_fmt; int video_spatial_filter_mode; int video_spatial_filter; int video_luma_spatial_filter_type; int video_chroma_spatial_filter_type; int video_temporal_filter_mode; int video_temporal_filter; int video_median_filter_type; int video_luma_median_filter_top; int video_luma_median_filter_bottom; int video_chroma_median_filter_top; int video_chroma_median_filter_bottom; int stream_insert_nav_packets; int video_encoding; } ;


 int CX2341X_CAP_HAS_AC3 ;
 int EBUSY ;
 int EINVAL ;
 int ERANGE ;
 int V4L2_MPEG_AUDIO_ENCODING_AC3 ;
 int V4L2_MPEG_AUDIO_ENCODING_LAYER_2 ;
 int V4L2_MPEG_STREAM_TYPE_MPEG1_SS ;
 int V4L2_MPEG_STREAM_TYPE_MPEG1_VCD ;
 int V4L2_MPEG_VIDEO_BITRATE_MODE_CBR ;
 int V4L2_MPEG_VIDEO_ENCODING_MPEG_1 ;
 int V4L2_MPEG_VIDEO_ENCODING_MPEG_2 ;

__attribute__((used)) static int cx2341x_set_ctrl(struct cx2341x_mpeg_params *params, int busy,
  struct v4l2_ext_control *ctrl)
{
 switch (ctrl->id) {
 case 152:
  if (busy)
   return -EBUSY;
  params->audio_sampling_freq = ctrl->value;
  break;
 case 157:
  if (busy)
   return -EBUSY;
  if (params->capabilities & CX2341X_CAP_HAS_AC3)
   if (ctrl->value != V4L2_MPEG_AUDIO_ENCODING_LAYER_2 &&
       ctrl->value != V4L2_MPEG_AUDIO_ENCODING_AC3)
    return -ERANGE;
  params->audio_encoding = ctrl->value;
  break;
 case 156:
  if (busy)
   return -EBUSY;
  params->audio_l2_bitrate = ctrl->value;
  break;
 case 160:
  if (busy)
   return -EBUSY;
  if (!(params->capabilities & CX2341X_CAP_HAS_AC3))
   return -EINVAL;
  params->audio_ac3_bitrate = ctrl->value;
  break;
 case 155:
  params->audio_mode = ctrl->value;
  break;
 case 154:
  params->audio_mode_extension = ctrl->value;
  break;
 case 158:
  params->audio_emphasis = ctrl->value;
  break;
 case 159:
  params->audio_crc = ctrl->value;
  break;
 case 153:
  params->audio_mute = ctrl->value;
  break;
 case 137:
  params->video_aspect = ctrl->value;
  break;
 case 133: {
  int b = ctrl->value + 1;
  int gop = params->video_gop_size;
  params->video_b_frames = ctrl->value;
  params->video_gop_size = b * ((gop + b - 1) / b);

  while (params->video_gop_size > 34)
   params->video_gop_size -= b;
  break;
 }
 case 131: {
  int b = params->video_b_frames + 1;
  int gop = ctrl->value;
  params->video_gop_size = b * ((gop + b - 1) / b);

  while (params->video_gop_size > 34)
   params->video_gop_size -= b;
  ctrl->value = params->video_gop_size;
  break;
 }
 case 132:
  params->video_gop_closure = ctrl->value;
  break;
 case 135:
  if (busy)
   return -EBUSY;

  if (params->video_encoding == V4L2_MPEG_VIDEO_ENCODING_MPEG_1 &&
      ctrl->value != V4L2_MPEG_VIDEO_BITRATE_MODE_CBR)
   return -EINVAL;
  params->video_bitrate_mode = ctrl->value;
  break;
 case 136:
  if (busy)
   return -EBUSY;
  params->video_bitrate = ctrl->value;
  break;
 case 134:
  if (busy)
   return -EBUSY;
  params->video_bitrate_peak = ctrl->value;
  break;
 case 128:
  params->video_temporal_decimation = ctrl->value;
  break;
 case 130:
  params->video_mute = (ctrl->value != 0);
  break;
 case 129:
  params->video_mute_yuv = ctrl->value;
  break;
 case 139:
  if (busy)
   return -EBUSY;
  params->stream_type = ctrl->value;
  params->video_encoding =
      (params->stream_type == V4L2_MPEG_STREAM_TYPE_MPEG1_SS ||
       params->stream_type == V4L2_MPEG_STREAM_TYPE_MPEG1_VCD) ?
   V4L2_MPEG_VIDEO_ENCODING_MPEG_1 :
   V4L2_MPEG_VIDEO_ENCODING_MPEG_2;
  if (params->video_encoding == V4L2_MPEG_VIDEO_ENCODING_MPEG_1)

   params->video_bitrate_mode =
    V4L2_MPEG_VIDEO_BITRATE_MODE_CBR;
  break;
 case 138:
  params->stream_vbi_fmt = ctrl->value;
  break;
 case 142:
  params->video_spatial_filter_mode = ctrl->value;
  break;
 case 143:
  params->video_spatial_filter = ctrl->value;
  break;
 case 145:
  params->video_luma_spatial_filter_type = ctrl->value;
  break;
 case 148:
  params->video_chroma_spatial_filter_type = ctrl->value;
  break;
 case 140:
  params->video_temporal_filter_mode = ctrl->value;
  break;
 case 141:
  params->video_temporal_filter = ctrl->value;
  break;
 case 144:
  params->video_median_filter_type = ctrl->value;
  break;
 case 146:
  params->video_luma_median_filter_top = ctrl->value;
  break;
 case 147:
  params->video_luma_median_filter_bottom = ctrl->value;
  break;
 case 149:
  params->video_chroma_median_filter_top = ctrl->value;
  break;
 case 150:
  params->video_chroma_median_filter_bottom = ctrl->value;
  break;
 case 151:
  params->stream_insert_nav_packets = ctrl->value;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
