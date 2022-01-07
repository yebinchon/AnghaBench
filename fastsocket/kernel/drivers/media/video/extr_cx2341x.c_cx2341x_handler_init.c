
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_ctrl_handler {int error; } ;
struct cx2341x_handler {int capabilities; int width; int height; void* video_luma_median_filter_top; void* video_spatial_filter; void* video_luma_spatial_filter_type; void* video_spatial_filter_mode; void* video_mute; void* stream_type; void* video_b_frames; void* audio_sampling_freq; void* video_chroma_median_filter_top; void* video_chroma_median_filter_bottom; void* video_luma_median_filter_bottom; void* video_median_filter_type; void* video_temporal_filter; void* video_temporal_filter_mode; void* video_chroma_spatial_filter_type; void* video_mute_yuv; void* video_bitrate_peak; void* video_bitrate; void* video_bitrate_mode; scalar_t__ is_50hz; void* video_gop_size; void* video_encoding; void* audio_ac3_bitrate; void* audio_crc; void* audio_emphasis; void* audio_mode_extension; void* audio_mode; void* audio_l2_bitrate; void* audio_encoding; void* stream_vbi_fmt; struct v4l2_ctrl_handler hdl; } ;


 int CX2341X_CAP_HAS_AC3 ;
 int CX2341X_CAP_HAS_SLICED_VBI ;
 int CX2341X_CAP_HAS_TS ;
 int V4L2_CID_MPEG_AUDIO_AC3_BITRATE ;
 int V4L2_CID_MPEG_AUDIO_CRC ;
 int V4L2_CID_MPEG_AUDIO_EMPHASIS ;
 int V4L2_CID_MPEG_AUDIO_ENCODING ;
 int V4L2_CID_MPEG_AUDIO_L2_BITRATE ;
 int V4L2_CID_MPEG_AUDIO_MODE ;
 int V4L2_CID_MPEG_AUDIO_MODE_EXTENSION ;
 int V4L2_CID_MPEG_AUDIO_MUTE ;
 int V4L2_CID_MPEG_AUDIO_SAMPLING_FREQ ;
 int V4L2_CID_MPEG_CX2341X_STREAM_INSERT_NAV_PACKETS ;
 int V4L2_CID_MPEG_CX2341X_VIDEO_CHROMA_MEDIAN_FILTER_BOTTOM ;
 int V4L2_CID_MPEG_CX2341X_VIDEO_CHROMA_MEDIAN_FILTER_TOP ;
 int V4L2_CID_MPEG_CX2341X_VIDEO_CHROMA_SPATIAL_FILTER_TYPE ;
 int V4L2_CID_MPEG_CX2341X_VIDEO_LUMA_MEDIAN_FILTER_BOTTOM ;
 int V4L2_CID_MPEG_CX2341X_VIDEO_LUMA_MEDIAN_FILTER_TOP ;
 int V4L2_CID_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE ;
 int V4L2_CID_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE ;
 int V4L2_CID_MPEG_CX2341X_VIDEO_SPATIAL_FILTER ;
 int V4L2_CID_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE ;
 int V4L2_CID_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER ;
 int V4L2_CID_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE ;
 int V4L2_CID_MPEG_STREAM_TYPE ;
 int V4L2_CID_MPEG_STREAM_VBI_FMT ;
 int V4L2_CID_MPEG_VIDEO_ASPECT ;
 int V4L2_CID_MPEG_VIDEO_BITRATE ;
 int V4L2_CID_MPEG_VIDEO_BITRATE_MODE ;
 int V4L2_CID_MPEG_VIDEO_BITRATE_PEAK ;
 int V4L2_CID_MPEG_VIDEO_B_FRAMES ;
 int V4L2_CID_MPEG_VIDEO_ENCODING ;
 int V4L2_CID_MPEG_VIDEO_GOP_CLOSURE ;
 int V4L2_CID_MPEG_VIDEO_GOP_SIZE ;
 int V4L2_CID_MPEG_VIDEO_MUTE ;
 int V4L2_CID_MPEG_VIDEO_MUTE_YUV ;
 int V4L2_CID_MPEG_VIDEO_TEMPORAL_DECIMATION ;
 int V4L2_MPEG_AUDIO_AC3_BITRATE_224K ;
 int V4L2_MPEG_AUDIO_AC3_BITRATE_448K ;
 int V4L2_MPEG_AUDIO_CRC_CRC16 ;
 int V4L2_MPEG_AUDIO_CRC_NONE ;
 int V4L2_MPEG_AUDIO_EMPHASIS_CCITT_J17 ;
 int V4L2_MPEG_AUDIO_EMPHASIS_NONE ;
 int V4L2_MPEG_AUDIO_ENCODING_AC3 ;
 int V4L2_MPEG_AUDIO_ENCODING_LAYER_2 ;
 int V4L2_MPEG_AUDIO_L2_BITRATE_224K ;
 int V4L2_MPEG_AUDIO_L2_BITRATE_384K ;
 int V4L2_MPEG_AUDIO_MODE_EXTENSION_BOUND_16 ;
 int V4L2_MPEG_AUDIO_MODE_EXTENSION_BOUND_4 ;
 int V4L2_MPEG_AUDIO_MODE_MONO ;
 int V4L2_MPEG_AUDIO_MODE_STEREO ;
 int V4L2_MPEG_AUDIO_SAMPLING_FREQ_32000 ;
 int V4L2_MPEG_AUDIO_SAMPLING_FREQ_48000 ;
 int V4L2_MPEG_CX2341X_VIDEO_CHROMA_SPATIAL_FILTER_TYPE_1D_HOR ;
 int V4L2_MPEG_CX2341X_VIDEO_CHROMA_SPATIAL_FILTER_TYPE_OFF ;
 int V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_1D_HOR ;
 int V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_2D_SYM_NON_SEPARABLE ;
 int V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_OFF ;
 int V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_DIAG ;
 int V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_OFF ;
 int V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_AUTO ;
 int V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_MANUAL ;
 int V4L2_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE_AUTO ;
 int V4L2_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE_MANUAL ;
 int V4L2_MPEG_STREAM_TYPE_MPEG2_PS ;
 int V4L2_MPEG_STREAM_TYPE_MPEG2_SVCD ;
 int V4L2_MPEG_STREAM_VBI_FMT_IVTV ;
 int V4L2_MPEG_STREAM_VBI_FMT_NONE ;
 int V4L2_MPEG_VIDEO_ASPECT_221x100 ;
 int V4L2_MPEG_VIDEO_ASPECT_4x3 ;
 int V4L2_MPEG_VIDEO_BITRATE_MODE_CBR ;
 int V4L2_MPEG_VIDEO_BITRATE_MODE_VBR ;
 int V4L2_MPEG_VIDEO_ENCODING_MPEG_2 ;
 void* cx2341x_ctrl_new_custom (struct v4l2_ctrl_handler*,int ,int,int,int,int) ;
 void* cx2341x_ctrl_new_menu (struct v4l2_ctrl_handler*,int ,int ,int,int ) ;
 void* cx2341x_ctrl_new_std (struct v4l2_ctrl_handler*,int ,int,int,int,int) ;
 int v4l2_ctrl_cluster (int,void**) ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,unsigned int) ;

int cx2341x_handler_init(struct cx2341x_handler *cxhdl,
    unsigned nr_of_controls_hint)
{
 struct v4l2_ctrl_handler *hdl = &cxhdl->hdl;
 u32 caps = cxhdl->capabilities;
 int has_sliced_vbi = caps & CX2341X_CAP_HAS_SLICED_VBI;
 int has_ac3 = caps & CX2341X_CAP_HAS_AC3;
 int has_ts = caps & CX2341X_CAP_HAS_TS;

 cxhdl->width = 720;
 cxhdl->height = 480;

 v4l2_ctrl_handler_init(hdl, nr_of_controls_hint);



 cxhdl->stream_type = cx2341x_ctrl_new_menu(hdl,
   V4L2_CID_MPEG_STREAM_TYPE,
   V4L2_MPEG_STREAM_TYPE_MPEG2_SVCD, has_ts ? 0 : 2,
   V4L2_MPEG_STREAM_TYPE_MPEG2_PS);
 cxhdl->stream_vbi_fmt = cx2341x_ctrl_new_menu(hdl,
   V4L2_CID_MPEG_STREAM_VBI_FMT,
   V4L2_MPEG_STREAM_VBI_FMT_IVTV, has_sliced_vbi ? 0 : 2,
   V4L2_MPEG_STREAM_VBI_FMT_NONE);
 cxhdl->audio_sampling_freq = cx2341x_ctrl_new_menu(hdl,
   V4L2_CID_MPEG_AUDIO_SAMPLING_FREQ,
   V4L2_MPEG_AUDIO_SAMPLING_FREQ_32000, 0,
   V4L2_MPEG_AUDIO_SAMPLING_FREQ_48000);
 cxhdl->audio_encoding = cx2341x_ctrl_new_menu(hdl,
   V4L2_CID_MPEG_AUDIO_ENCODING,
   V4L2_MPEG_AUDIO_ENCODING_AC3, has_ac3 ? ~0x12 : ~0x2,
   V4L2_MPEG_AUDIO_ENCODING_LAYER_2);
 cxhdl->audio_l2_bitrate = cx2341x_ctrl_new_menu(hdl,
   V4L2_CID_MPEG_AUDIO_L2_BITRATE,
   V4L2_MPEG_AUDIO_L2_BITRATE_384K, 0x1ff,
   V4L2_MPEG_AUDIO_L2_BITRATE_224K);
 cxhdl->audio_mode = cx2341x_ctrl_new_menu(hdl,
   V4L2_CID_MPEG_AUDIO_MODE,
   V4L2_MPEG_AUDIO_MODE_MONO, 0,
   V4L2_MPEG_AUDIO_MODE_STEREO);
 cxhdl->audio_mode_extension = cx2341x_ctrl_new_menu(hdl,
   V4L2_CID_MPEG_AUDIO_MODE_EXTENSION,
   V4L2_MPEG_AUDIO_MODE_EXTENSION_BOUND_16, 0,
   V4L2_MPEG_AUDIO_MODE_EXTENSION_BOUND_4);
 cxhdl->audio_emphasis = cx2341x_ctrl_new_menu(hdl,
   V4L2_CID_MPEG_AUDIO_EMPHASIS,
   V4L2_MPEG_AUDIO_EMPHASIS_CCITT_J17, 0,
   V4L2_MPEG_AUDIO_EMPHASIS_NONE);
 cxhdl->audio_crc = cx2341x_ctrl_new_menu(hdl,
   V4L2_CID_MPEG_AUDIO_CRC,
   V4L2_MPEG_AUDIO_CRC_CRC16, 0,
   V4L2_MPEG_AUDIO_CRC_NONE);

 cx2341x_ctrl_new_std(hdl, V4L2_CID_MPEG_AUDIO_MUTE, 0, 1, 1, 0);
 if (has_ac3)
  cxhdl->audio_ac3_bitrate = cx2341x_ctrl_new_menu(hdl,
    V4L2_CID_MPEG_AUDIO_AC3_BITRATE,
    V4L2_MPEG_AUDIO_AC3_BITRATE_448K, 0x03,
    V4L2_MPEG_AUDIO_AC3_BITRATE_224K);
 cxhdl->video_encoding = cx2341x_ctrl_new_menu(hdl,
   V4L2_CID_MPEG_VIDEO_ENCODING,
   V4L2_MPEG_VIDEO_ENCODING_MPEG_2, 0,
   V4L2_MPEG_VIDEO_ENCODING_MPEG_2);
 cx2341x_ctrl_new_menu(hdl,
   V4L2_CID_MPEG_VIDEO_ASPECT,
   V4L2_MPEG_VIDEO_ASPECT_221x100, 0,
   V4L2_MPEG_VIDEO_ASPECT_4x3);
 cxhdl->video_b_frames = cx2341x_ctrl_new_std(hdl,
   V4L2_CID_MPEG_VIDEO_B_FRAMES, 0, 33, 1, 2);
 cxhdl->video_gop_size = cx2341x_ctrl_new_std(hdl,
   V4L2_CID_MPEG_VIDEO_GOP_SIZE,
   1, 34, 1, cxhdl->is_50hz ? 12 : 15);
 cx2341x_ctrl_new_std(hdl, V4L2_CID_MPEG_VIDEO_GOP_CLOSURE, 0, 1, 1, 1);
 cxhdl->video_bitrate_mode = cx2341x_ctrl_new_menu(hdl,
   V4L2_CID_MPEG_VIDEO_BITRATE_MODE,
   V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, 0,
   V4L2_MPEG_VIDEO_BITRATE_MODE_VBR);
 cxhdl->video_bitrate = cx2341x_ctrl_new_std(hdl,
   V4L2_CID_MPEG_VIDEO_BITRATE,
   0, 27000000, 1, 6000000);
 cxhdl->video_bitrate_peak = cx2341x_ctrl_new_std(hdl,
   V4L2_CID_MPEG_VIDEO_BITRATE_PEAK,
   0, 27000000, 1, 8000000);
 cx2341x_ctrl_new_std(hdl,
   V4L2_CID_MPEG_VIDEO_TEMPORAL_DECIMATION, 0, 255, 1, 0);
 cxhdl->video_mute = cx2341x_ctrl_new_std(hdl,
   V4L2_CID_MPEG_VIDEO_MUTE, 0, 1, 1, 0);
 cxhdl->video_mute_yuv = cx2341x_ctrl_new_std(hdl,
   V4L2_CID_MPEG_VIDEO_MUTE_YUV, 0, 0xffffff, 1, 0x008080);


 cxhdl->video_spatial_filter_mode = cx2341x_ctrl_new_custom(hdl,
   V4L2_CID_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE,
   V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_MANUAL,
   V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_AUTO, 0,
   V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_MANUAL);
 cxhdl->video_spatial_filter = cx2341x_ctrl_new_custom(hdl,
   V4L2_CID_MPEG_CX2341X_VIDEO_SPATIAL_FILTER,
   0, 15, 1, 0);
 cxhdl->video_luma_spatial_filter_type = cx2341x_ctrl_new_custom(hdl,
   V4L2_CID_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE,
   V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_OFF,
   V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_2D_SYM_NON_SEPARABLE,
   0,
   V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_1D_HOR);
 cxhdl->video_chroma_spatial_filter_type = cx2341x_ctrl_new_custom(hdl,
   V4L2_CID_MPEG_CX2341X_VIDEO_CHROMA_SPATIAL_FILTER_TYPE,
   V4L2_MPEG_CX2341X_VIDEO_CHROMA_SPATIAL_FILTER_TYPE_OFF,
   V4L2_MPEG_CX2341X_VIDEO_CHROMA_SPATIAL_FILTER_TYPE_1D_HOR,
   0,
   V4L2_MPEG_CX2341X_VIDEO_CHROMA_SPATIAL_FILTER_TYPE_1D_HOR);
 cxhdl->video_temporal_filter_mode = cx2341x_ctrl_new_custom(hdl,
   V4L2_CID_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE,
   V4L2_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE_MANUAL,
   V4L2_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE_AUTO,
   0,
   V4L2_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE_MANUAL);
 cxhdl->video_temporal_filter = cx2341x_ctrl_new_custom(hdl,
   V4L2_CID_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER,
   0, 31, 1, 8);
 cxhdl->video_median_filter_type = cx2341x_ctrl_new_custom(hdl,
   V4L2_CID_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE,
   V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_OFF,
   V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_DIAG,
   0,
   V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_OFF);
 cxhdl->video_luma_median_filter_bottom = cx2341x_ctrl_new_custom(hdl,
   V4L2_CID_MPEG_CX2341X_VIDEO_LUMA_MEDIAN_FILTER_BOTTOM,
   0, 255, 1, 0);
 cxhdl->video_luma_median_filter_top = cx2341x_ctrl_new_custom(hdl,
   V4L2_CID_MPEG_CX2341X_VIDEO_LUMA_MEDIAN_FILTER_TOP,
   0, 255, 1, 255);
 cxhdl->video_chroma_median_filter_bottom = cx2341x_ctrl_new_custom(hdl,
   V4L2_CID_MPEG_CX2341X_VIDEO_CHROMA_MEDIAN_FILTER_BOTTOM,
   0, 255, 1, 0);
 cxhdl->video_chroma_median_filter_top = cx2341x_ctrl_new_custom(hdl,
   V4L2_CID_MPEG_CX2341X_VIDEO_CHROMA_MEDIAN_FILTER_TOP,
   0, 255, 1, 255);
 cx2341x_ctrl_new_custom(hdl, V4L2_CID_MPEG_CX2341X_STREAM_INSERT_NAV_PACKETS,
   0, 1, 1, 0);

 if (hdl->error) {
  int err = hdl->error;

  v4l2_ctrl_handler_free(hdl);
  return err;
 }

 v4l2_ctrl_cluster(8, &cxhdl->audio_sampling_freq);
 v4l2_ctrl_cluster(2, &cxhdl->video_b_frames);
 v4l2_ctrl_cluster(5, &cxhdl->stream_type);
 v4l2_ctrl_cluster(2, &cxhdl->video_mute);
 v4l2_ctrl_cluster(3, &cxhdl->video_spatial_filter_mode);
 v4l2_ctrl_cluster(2, &cxhdl->video_luma_spatial_filter_type);
 v4l2_ctrl_cluster(2, &cxhdl->video_spatial_filter);
 v4l2_ctrl_cluster(4, &cxhdl->video_luma_median_filter_top);

 return 0;
}
