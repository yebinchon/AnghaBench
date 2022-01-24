#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  pre_emphasis; } ;
struct poseidon {TYPE_1__ radio_data; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATV_AUDIO_RATE_48K ; 
 int /*<<< orphan*/  AUDIO_SAMPLE_RATE_SEL ; 
 int /*<<< orphan*/  BULK_ALTERNATE_IFACE ; 
 int HZ ; 
 int /*<<< orphan*/  SGNL_SRC_SEL ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TLG_MODE_FM_RADIO ; 
 int /*<<< orphan*/  TLG_SIG_SRC_ANTENNA ; 
 int /*<<< orphan*/  TLG_TUNE_TVAUDIO_MODE_STEREO ; 
 int /*<<< orphan*/  TUNER_AUD_ANA_STD ; 
 int /*<<< orphan*/  TUNER_AUD_MODE ; 
 int /*<<< orphan*/  TUNER_FREQ_MIN_FM ; 
 int /*<<< orphan*/  TUNE_FREQ_SELECT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct poseidon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct poseidon*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct poseidon *p)
{
	int ret;
	u32 status;

	FUNC2(TASK_INTERRUPTIBLE);
	FUNC0(HZ/2);
	ret = FUNC4(p->udev, 0, BULK_ALTERNATE_IFACE);
	if (ret < 0)
		goto out;

	ret = FUNC3(p, TLG_MODE_FM_RADIO);
	if (ret != 0)
		goto out;

	ret = FUNC1(p, SGNL_SRC_SEL, TLG_SIG_SRC_ANTENNA, &status);
	ret = FUNC1(p, TUNER_AUD_ANA_STD,
				p->radio_data.pre_emphasis, &status);
	ret |= FUNC1(p, TUNER_AUD_MODE,
				TLG_TUNE_TVAUDIO_MODE_STEREO, &status);
	ret |= FUNC1(p, AUDIO_SAMPLE_RATE_SEL,
				ATV_AUDIO_RATE_48K, &status);
	ret |= FUNC1(p, TUNE_FREQ_SELECT, TUNER_FREQ_MIN_FM, &status);
out:
	return ret;
}