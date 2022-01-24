#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  tvnormid; } ;
struct TYPE_4__ {TYPE_1__ context; } ;
struct poseidon {TYPE_2__ video_data; scalar_t__ cur_transfer_mode; int /*<<< orphan*/  udev; } ;
typedef  int s32 ;

/* Variables and functions */
 int ATV_AUDIO_RATE_48K ; 
 int /*<<< orphan*/  AUDIO_SAMPLE_RATE_SEL ; 
 int /*<<< orphan*/  BULK_ALTERNATE_IFACE ; 
 int HZ ; 
 int /*<<< orphan*/  ISO_3K_BULK_ALTERNATE_IFACE ; 
 int /*<<< orphan*/  SGNL_SRC_SEL ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TLG_MODE_ANALOG_TV ; 
 int TLG_SIG_SRC_ANTENNA ; 
 int TLG_TUNER_VID_FORMAT_YUV ; 
 int TLG_TUNE_TVAUDIO_MODE_STEREO ; 
 int TLG_TUNE_VID_RES_720 ; 
 int TLG_TUNE_VSTD_PAL_D ; 
 int /*<<< orphan*/  TUNER_AUD_ANA_STD ; 
 int /*<<< orphan*/  TUNER_AUD_MODE ; 
 int TUNER_FREQ_MIN ; 
 int /*<<< orphan*/  TUNE_FREQ_SELECT ; 
 int /*<<< orphan*/  VBI_DATA_SEL ; 
 int /*<<< orphan*/  VIDEO_ROSOLU_SEL ; 
 int /*<<< orphan*/  VIDEO_STD_SEL ; 
 int /*<<< orphan*/  VIDEO_STREAM_FMT_SEL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct poseidon*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct poseidon*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct poseidon *pd)
{
	s32 ret = 0, cmd_status, audiomode;

	FUNC3(TASK_INTERRUPTIBLE);
	FUNC1(HZ/2);

	/* choose the altersetting */
	ret = FUNC5(pd->udev, 0,
					(pd->cur_transfer_mode ?
					 ISO_3K_BULK_ALTERNATE_IFACE :
					 BULK_ALTERNATE_IFACE));
	if (ret < 0)
		goto error;

	/* set default parameters for PAL-D , with the VBI enabled*/
	ret = FUNC4(pd, TLG_MODE_ANALOG_TV);
	ret |= FUNC2(pd, SGNL_SRC_SEL,
				TLG_SIG_SRC_ANTENNA, &cmd_status);
	ret |= FUNC2(pd, VIDEO_STD_SEL,
				TLG_TUNE_VSTD_PAL_D, &cmd_status);
	ret |= FUNC2(pd, VIDEO_STREAM_FMT_SEL,
				TLG_TUNER_VID_FORMAT_YUV, &cmd_status);
	ret |= FUNC2(pd, VIDEO_ROSOLU_SEL,
				TLG_TUNE_VID_RES_720, &cmd_status);
	ret |= FUNC2(pd, TUNE_FREQ_SELECT, TUNER_FREQ_MIN, &cmd_status);
	ret |= FUNC2(pd, VBI_DATA_SEL, 1, &cmd_status);/* enable vbi */

	/* set the audio */
	audiomode = FUNC0(pd->video_data.context.tvnormid);
	ret |= FUNC2(pd, TUNER_AUD_ANA_STD, audiomode, &cmd_status);
	ret |= FUNC2(pd, TUNER_AUD_MODE,
				TLG_TUNE_TVAUDIO_MODE_STEREO, &cmd_status);
	ret |= FUNC2(pd, AUDIO_SAMPLE_RATE_SEL,
				ATV_AUDIO_RATE_48K, &cmd_status);
error:
	return ret;
}