#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u16 ;
struct cx2341x_mpeg_params {int video_temporal_filter; int port; int width; int height; scalar_t__ video_encoding; size_t stream_type; int video_aspect; int video_gop_size; int video_b_frames; int video_bitrate_peak; int video_spatial_filter_mode; int video_temporal_filter_mode; int video_median_filter_type; int video_luma_spatial_filter_type; int video_chroma_spatial_filter_type; int video_spatial_filter; int video_mute; int video_mute_yuv; int stream_insert_nav_packets; int /*<<< orphan*/  video_temporal_decimation; int /*<<< orphan*/  video_chroma_median_filter_top; int /*<<< orphan*/  video_chroma_median_filter_bottom; int /*<<< orphan*/  video_luma_median_filter_top; int /*<<< orphan*/  video_luma_median_filter_bottom; int /*<<< orphan*/  video_bitrate; int /*<<< orphan*/  video_bitrate_mode; int /*<<< orphan*/  audio_mute; int /*<<< orphan*/  audio_properties; int /*<<< orphan*/  video_gop_closure; int /*<<< orphan*/  is_50hz; } ;
typedef  int /*<<< orphan*/  cx2341x_mbox_func ;

/* Variables and functions */
 int /*<<< orphan*/  CX2341X_ENC_MISC ; 
 int /*<<< orphan*/  CX2341X_ENC_MUTE_AUDIO ; 
 int /*<<< orphan*/  CX2341X_ENC_MUTE_VIDEO ; 
 int /*<<< orphan*/  CX2341X_ENC_SET_ASPECT_RATIO ; 
 int /*<<< orphan*/  CX2341X_ENC_SET_AUDIO_PROPERTIES ; 
 int /*<<< orphan*/  CX2341X_ENC_SET_BIT_RATE ; 
 int /*<<< orphan*/  CX2341X_ENC_SET_CORING_LEVELS ; 
 int /*<<< orphan*/  CX2341X_ENC_SET_DNR_FILTER_MODE ; 
 int /*<<< orphan*/  CX2341X_ENC_SET_DNR_FILTER_PROPS ; 
 int /*<<< orphan*/  CX2341X_ENC_SET_FRAME_DROP_RATE ; 
 int /*<<< orphan*/  CX2341X_ENC_SET_FRAME_RATE ; 
 int /*<<< orphan*/  CX2341X_ENC_SET_FRAME_SIZE ; 
 int /*<<< orphan*/  CX2341X_ENC_SET_GOP_CLOSURE ; 
 int /*<<< orphan*/  CX2341X_ENC_SET_GOP_PROPERTIES ; 
 int /*<<< orphan*/  CX2341X_ENC_SET_OUTPUT_PORT ; 
 int /*<<< orphan*/  CX2341X_ENC_SET_SPATIAL_FILTER_TYPE ; 
 int /*<<< orphan*/  CX2341X_ENC_SET_STREAM_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ V4L2_MPEG_VIDEO_ENCODING_MPEG_1 ; 
 int /*<<< orphan*/  audio_mute ; 
 int /*<<< orphan*/  audio_properties ; 
 int FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,...) ; 
 int /*<<< orphan*/  height ; 
 int /*<<< orphan*/  is_50hz ; 
 int /*<<< orphan*/  stream_insert_nav_packets ; 
 int /*<<< orphan*/  stream_type ; 
 int /*<<< orphan*/  video_aspect ; 
 int /*<<< orphan*/  video_b_frames ; 
 int /*<<< orphan*/  video_bitrate ; 
 int /*<<< orphan*/  video_bitrate_mode ; 
 int /*<<< orphan*/  video_bitrate_peak ; 
 int /*<<< orphan*/  video_chroma_median_filter_bottom ; 
 int /*<<< orphan*/  video_chroma_median_filter_top ; 
 int /*<<< orphan*/  video_chroma_spatial_filter_type ; 
 int /*<<< orphan*/  video_encoding ; 
 int /*<<< orphan*/  video_gop_closure ; 
 int /*<<< orphan*/  video_gop_size ; 
 int /*<<< orphan*/  video_luma_median_filter_bottom ; 
 int /*<<< orphan*/  video_luma_median_filter_top ; 
 int /*<<< orphan*/  video_luma_spatial_filter_type ; 
 int /*<<< orphan*/  video_median_filter_type ; 
 int /*<<< orphan*/  video_mute ; 
 int /*<<< orphan*/  video_mute_yuv ; 
 int /*<<< orphan*/  video_spatial_filter ; 
 int /*<<< orphan*/  video_spatial_filter_mode ; 
 int /*<<< orphan*/  video_temporal_decimation ; 
 int /*<<< orphan*/  video_temporal_filter_mode ; 
 int /*<<< orphan*/  width ; 

int FUNC2(void *priv, cx2341x_mbox_func func,
		   const struct cx2341x_mpeg_params *old,
		   const struct cx2341x_mpeg_params *new)
{
	static int mpeg_stream_type[] = {
		0,	/* MPEG-2 PS */
		1,	/* MPEG-2 TS */
		2,	/* MPEG-1 SS */
		14,	/* DVD */
		11,	/* VCD */
		12,	/* SVCD */
	};

	int err = 0;
	int force = (old == NULL);
	u16 temporal = new->video_temporal_filter;

	FUNC1(priv, func, CX2341X_ENC_SET_OUTPUT_PORT, 2, new->port, 0);

	if (force || FUNC0(is_50hz)) {
		err = FUNC1(priv, func, CX2341X_ENC_SET_FRAME_RATE, 1,
				  new->is_50hz);
		if (err) return err;
	}

	if (force || FUNC0(width) || FUNC0(height) || FUNC0(video_encoding)) {
		u16 w = new->width;
		u16 h = new->height;

		if (new->video_encoding == V4L2_MPEG_VIDEO_ENCODING_MPEG_1) {
			w /= 2;
			h /= 2;
		}
		err = FUNC1(priv, func, CX2341X_ENC_SET_FRAME_SIZE, 2,
				  h, w);
		if (err) return err;
	}
	if (force || FUNC0(stream_type)) {
		err = FUNC1(priv, func, CX2341X_ENC_SET_STREAM_TYPE, 1,
				  mpeg_stream_type[new->stream_type]);
		if (err) return err;
	}
	if (force || FUNC0(video_aspect)) {
		err = FUNC1(priv, func, CX2341X_ENC_SET_ASPECT_RATIO, 1,
				  1 + new->video_aspect);
		if (err) return err;
	}
	if (force || FUNC0(video_b_frames) || FUNC0(video_gop_size)) {
		err = FUNC1(priv, func, CX2341X_ENC_SET_GOP_PROPERTIES, 2,
				new->video_gop_size, new->video_b_frames + 1);
		if (err) return err;
	}
	if (force || FUNC0(video_gop_closure)) {
		err = FUNC1(priv, func, CX2341X_ENC_SET_GOP_CLOSURE, 1,
				  new->video_gop_closure);
		if (err) return err;
	}
	if (force || FUNC0(audio_properties)) {
		err = FUNC1(priv, func, CX2341X_ENC_SET_AUDIO_PROPERTIES,
				  1, new->audio_properties);
		if (err) return err;
	}
	if (force || FUNC0(audio_mute)) {
		err = FUNC1(priv, func, CX2341X_ENC_MUTE_AUDIO, 1,
				  new->audio_mute);
		if (err) return err;
	}
	if (force || FUNC0(video_bitrate_mode) || FUNC0(video_bitrate) ||
						FUNC0(video_bitrate_peak)) {
		err = FUNC1(priv, func, CX2341X_ENC_SET_BIT_RATE, 5,
				new->video_bitrate_mode, new->video_bitrate,
				new->video_bitrate_peak / 400, 0, 0);
		if (err) return err;
	}
	if (force || FUNC0(video_spatial_filter_mode) ||
		     FUNC0(video_temporal_filter_mode) ||
		     FUNC0(video_median_filter_type)) {
		err = FUNC1(priv, func, CX2341X_ENC_SET_DNR_FILTER_MODE,
				  2, new->video_spatial_filter_mode |
					(new->video_temporal_filter_mode << 1),
				new->video_median_filter_type);
		if (err) return err;
	}
	if (force || FUNC0(video_luma_median_filter_bottom) ||
		     FUNC0(video_luma_median_filter_top) ||
		     FUNC0(video_chroma_median_filter_bottom) ||
		     FUNC0(video_chroma_median_filter_top)) {
		err = FUNC1(priv, func, CX2341X_ENC_SET_CORING_LEVELS, 4,
				new->video_luma_median_filter_bottom,
				new->video_luma_median_filter_top,
				new->video_chroma_median_filter_bottom,
				new->video_chroma_median_filter_top);
		if (err) return err;
	}
	if (force || FUNC0(video_luma_spatial_filter_type) ||
		     FUNC0(video_chroma_spatial_filter_type)) {
		err = FUNC1(priv, func,
				  CX2341X_ENC_SET_SPATIAL_FILTER_TYPE,
				  2, new->video_luma_spatial_filter_type,
				  new->video_chroma_spatial_filter_type);
		if (err) return err;
	}
	if (force || FUNC0(video_spatial_filter) ||
		     old->video_temporal_filter != temporal) {
		err = FUNC1(priv, func, CX2341X_ENC_SET_DNR_FILTER_PROPS,
				  2, new->video_spatial_filter, temporal);
		if (err) return err;
	}
	if (force || FUNC0(video_temporal_decimation)) {
		err = FUNC1(priv, func, CX2341X_ENC_SET_FRAME_DROP_RATE,
				  1, new->video_temporal_decimation);
		if (err) return err;
	}
	if (force || FUNC0(video_mute) ||
		(new->video_mute && FUNC0(video_mute_yuv))) {
		err = FUNC1(priv, func, CX2341X_ENC_MUTE_VIDEO, 1,
				new->video_mute | (new->video_mute_yuv << 8));
		if (err) return err;
	}
	if (force || FUNC0(stream_insert_nav_packets)) {
		err = FUNC1(priv, func, CX2341X_ENC_MISC, 2,
				7, new->stream_insert_nav_packets);
		if (err) return err;
	}
	return 0;
}