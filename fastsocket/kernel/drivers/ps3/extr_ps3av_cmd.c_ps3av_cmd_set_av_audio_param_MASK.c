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
typedef  int u32 ;
struct ps3av_pkt_av_audio_param {int avport; int mclk; int swaplr; int inputctrl; int /*<<< orphan*/  chstat; int /*<<< orphan*/  info; int /*<<< orphan*/  layout; int /*<<< orphan*/  inputlen; int /*<<< orphan*/  fifomap; int /*<<< orphan*/  enable; int /*<<< orphan*/  ns; int /*<<< orphan*/  send_hdr; } ;
struct ps3av_pkt_audio_mode {int /*<<< orphan*/  audio_cs_info; int /*<<< orphan*/  audio_num_of_ch; int /*<<< orphan*/  audio_word_bits; int /*<<< orphan*/  audio_map; int /*<<< orphan*/  audio_enable; int /*<<< orphan*/  audio_source; int /*<<< orphan*/  audio_fs; } ;

/* Variables and functions */
 int /*<<< orphan*/  PS3AV_CID_AV_AUDIO_PARAM ; 
 int /*<<< orphan*/  FUNC0 (struct ps3av_pkt_av_audio_param*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ps3av_pkt_audio_mode const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

u32 FUNC10(void *p, u32 port,
				 const struct ps3av_pkt_audio_mode *audio_mode,
				 u32 video_vid)
{
	struct ps3av_pkt_av_audio_param *param;

	param = (struct ps3av_pkt_av_audio_param *)p;

	FUNC0(param, 0, sizeof(*param));
	FUNC9(PS3AV_CID_AV_AUDIO_PARAM, sizeof(*param),
		      &param->send_hdr);

	param->avport = port;
	param->mclk = FUNC7(audio_mode->audio_fs) | 0x80;
	FUNC8(param->ns, audio_mode->audio_fs, video_vid);
	param->enable = FUNC2(audio_mode->audio_source,
					 audio_mode->audio_enable);
	param->swaplr = 0x09;
	param->fifomap = FUNC3(audio_mode->audio_map);
	param->inputctrl = 0x49;
	param->inputlen = FUNC5(audio_mode->audio_word_bits);
	param->layout = FUNC6(audio_mode->audio_num_of_ch);
	FUNC4(&param->info, audio_mode);
	FUNC1(param->chstat, audio_mode->audio_cs_info);

	return sizeof(*param);
}