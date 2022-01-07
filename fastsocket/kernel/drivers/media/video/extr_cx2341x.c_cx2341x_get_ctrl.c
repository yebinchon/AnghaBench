
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_control {int id; int value; } ;
struct cx2341x_mpeg_params {int stream_insert_nav_packets; int video_chroma_median_filter_bottom; int video_chroma_median_filter_top; int video_luma_median_filter_bottom; int video_luma_median_filter_top; int video_median_filter_type; int video_temporal_filter; int video_temporal_filter_mode; int video_chroma_spatial_filter_type; int video_luma_spatial_filter_type; int video_spatial_filter; int video_spatial_filter_mode; int stream_vbi_fmt; int stream_type; int video_mute_yuv; int video_mute; int video_temporal_decimation; int video_bitrate_peak; int video_bitrate; int video_bitrate_mode; int video_gop_closure; int video_gop_size; int video_b_frames; int video_aspect; int video_encoding; int audio_mute; int audio_crc; int audio_emphasis; int audio_mode_extension; int audio_mode; int audio_ac3_bitrate; int audio_l2_bitrate; int audio_encoding; int audio_sampling_freq; } ;


 int EINVAL ;
__attribute__((used)) static int cx2341x_get_ctrl(const struct cx2341x_mpeg_params *params,
  struct v4l2_ext_control *ctrl)
{
 switch (ctrl->id) {
 case 153:
  ctrl->value = params->audio_sampling_freq;
  break;
 case 158:
  ctrl->value = params->audio_encoding;
  break;
 case 157:
  ctrl->value = params->audio_l2_bitrate;
  break;
 case 161:
  ctrl->value = params->audio_ac3_bitrate;
  break;
 case 156:
  ctrl->value = params->audio_mode;
  break;
 case 155:
  ctrl->value = params->audio_mode_extension;
  break;
 case 159:
  ctrl->value = params->audio_emphasis;
  break;
 case 160:
  ctrl->value = params->audio_crc;
  break;
 case 154:
  ctrl->value = params->audio_mute;
  break;
 case 133:
  ctrl->value = params->video_encoding;
  break;
 case 138:
  ctrl->value = params->video_aspect;
  break;
 case 134:
  ctrl->value = params->video_b_frames;
  break;
 case 131:
  ctrl->value = params->video_gop_size;
  break;
 case 132:
  ctrl->value = params->video_gop_closure;
  break;
 case 136:
  ctrl->value = params->video_bitrate_mode;
  break;
 case 137:
  ctrl->value = params->video_bitrate;
  break;
 case 135:
  ctrl->value = params->video_bitrate_peak;
  break;
 case 128:
  ctrl->value = params->video_temporal_decimation;
  break;
 case 130:
  ctrl->value = params->video_mute;
  break;
 case 129:
  ctrl->value = params->video_mute_yuv;
  break;
 case 140:
  ctrl->value = params->stream_type;
  break;
 case 139:
  ctrl->value = params->stream_vbi_fmt;
  break;
 case 143:
  ctrl->value = params->video_spatial_filter_mode;
  break;
 case 144:
  ctrl->value = params->video_spatial_filter;
  break;
 case 146:
  ctrl->value = params->video_luma_spatial_filter_type;
  break;
 case 149:
  ctrl->value = params->video_chroma_spatial_filter_type;
  break;
 case 141:
  ctrl->value = params->video_temporal_filter_mode;
  break;
 case 142:
  ctrl->value = params->video_temporal_filter;
  break;
 case 145:
  ctrl->value = params->video_median_filter_type;
  break;
 case 147:
  ctrl->value = params->video_luma_median_filter_top;
  break;
 case 148:
  ctrl->value = params->video_luma_median_filter_bottom;
  break;
 case 150:
  ctrl->value = params->video_chroma_median_filter_top;
  break;
 case 151:
  ctrl->value = params->video_chroma_median_filter_bottom;
  break;
 case 152:
  ctrl->value = params->stream_insert_nav_packets;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
