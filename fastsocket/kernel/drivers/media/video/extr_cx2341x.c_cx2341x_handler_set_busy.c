
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx2341x_handler {int video_bitrate_peak; int video_bitrate; int video_bitrate_mode; int stream_type; int stream_vbi_fmt; int audio_ac3_bitrate; int audio_l2_bitrate; int audio_encoding; int audio_sampling_freq; } ;


 int v4l2_ctrl_grab (int ,int) ;

void cx2341x_handler_set_busy(struct cx2341x_handler *cxhdl, int busy)
{
 v4l2_ctrl_grab(cxhdl->audio_sampling_freq, busy);
 v4l2_ctrl_grab(cxhdl->audio_encoding, busy);
 v4l2_ctrl_grab(cxhdl->audio_l2_bitrate, busy);
 v4l2_ctrl_grab(cxhdl->audio_ac3_bitrate, busy);
 v4l2_ctrl_grab(cxhdl->stream_vbi_fmt, busy);
 v4l2_ctrl_grab(cxhdl->stream_type, busy);
 v4l2_ctrl_grab(cxhdl->video_bitrate_mode, busy);
 v4l2_ctrl_grab(cxhdl->video_bitrate, busy);
 v4l2_ctrl_grab(cxhdl->video_bitrate_peak, busy);
}
