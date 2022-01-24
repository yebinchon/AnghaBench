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
struct cx2341x_handler {int /*<<< orphan*/  video_bitrate_peak; int /*<<< orphan*/  video_bitrate; int /*<<< orphan*/  video_bitrate_mode; int /*<<< orphan*/  stream_type; int /*<<< orphan*/  stream_vbi_fmt; int /*<<< orphan*/  audio_ac3_bitrate; int /*<<< orphan*/  audio_l2_bitrate; int /*<<< orphan*/  audio_encoding; int /*<<< orphan*/  audio_sampling_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

void FUNC1(struct cx2341x_handler *cxhdl, int busy)
{
	FUNC0(cxhdl->audio_sampling_freq, busy);
	FUNC0(cxhdl->audio_encoding, busy);
	FUNC0(cxhdl->audio_l2_bitrate, busy);
	FUNC0(cxhdl->audio_ac3_bitrate, busy);
	FUNC0(cxhdl->stream_vbi_fmt, busy);
	FUNC0(cxhdl->stream_type, busy);
	FUNC0(cxhdl->video_bitrate_mode, busy);
	FUNC0(cxhdl->video_bitrate, busy);
	FUNC0(cxhdl->video_bitrate_peak, busy);
}