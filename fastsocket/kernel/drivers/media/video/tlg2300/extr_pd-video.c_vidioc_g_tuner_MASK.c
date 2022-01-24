#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct v4l2_tuner {scalar_t__ index; int signal; int rangelow; int rangehigh; int capability; scalar_t__ afc; int /*<<< orphan*/  audmode; int /*<<< orphan*/  rxsubchans; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct tuner_atv_sig_stat_s {int sig_strength; scalar_t__ sig_present; scalar_t__ sig_lock_busy; } ;
struct TYPE_4__ {int audio_idx; } ;
struct TYPE_5__ {TYPE_1__ context; } ;
struct poseidon {TYPE_2__ video_data; int /*<<< orphan*/  lock; } ;
struct front_face {struct poseidon* pd; } ;
struct file {int dummy; } ;
typedef  int s32 ;
typedef  int /*<<< orphan*/  atv_stat ;
struct TYPE_6__ {int /*<<< orphan*/  v4l2_audio_mode; int /*<<< orphan*/  v4l2_audio_sub; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TLG_MODE_ANALOG_TV ; 
 int TUNER_FREQ_MAX ; 
 int TUNER_FREQ_MIN ; 
 int /*<<< orphan*/  TUNER_STATUS ; 
 int /*<<< orphan*/  V4L2_TUNER_ANALOG_TV ; 
 int V4L2_TUNER_CAP_LANG1 ; 
 int V4L2_TUNER_CAP_LANG2 ; 
 int V4L2_TUNER_CAP_NORM ; 
 int V4L2_TUNER_CAP_STEREO ; 
 scalar_t__ debug_mode ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct front_face*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__* pd_audio_modes ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct poseidon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tuner_atv_sig_stat_s*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC8(struct file *file, void *fh, struct v4l2_tuner *tuner)
{
	struct front_face *front	= fh;
	struct poseidon *pd		= front->pd;
	struct tuner_atv_sig_stat_s atv_stat;
	s32 count = 5, ret, cmd_status;
	int index;

	if (0 != tuner->index)
		return -EINVAL;

	FUNC2(&pd->lock);
	ret = FUNC5(pd, TUNER_STATUS, TLG_MODE_ANALOG_TV,
				&atv_stat, &cmd_status, sizeof(atv_stat));

	while (atv_stat.sig_lock_busy && count-- && !ret) {
		FUNC6(TASK_INTERRUPTIBLE);
		FUNC4(HZ);

		ret = FUNC5(pd, TUNER_STATUS, TLG_MODE_ANALOG_TV,
				&atv_stat, &cmd_status, sizeof(atv_stat));
	}
	FUNC3(&pd->lock);

	if (debug_mode)
		FUNC0("P:%d,S:%d", atv_stat.sig_present, atv_stat.sig_strength);

	if (ret || cmd_status)
		tuner->signal = 0;
	else if (atv_stat.sig_present && !atv_stat.sig_strength)
		tuner->signal = 0xFFFF;
	else
		tuner->signal = (atv_stat.sig_strength * 255 / 10) << 8;

	FUNC7(tuner->name, "Telegent Systems");
	tuner->type = V4L2_TUNER_ANALOG_TV;
	tuner->rangelow = TUNER_FREQ_MIN / 62500;
	tuner->rangehigh = TUNER_FREQ_MAX / 62500;
	tuner->capability = V4L2_TUNER_CAP_NORM | V4L2_TUNER_CAP_STEREO |
				V4L2_TUNER_CAP_LANG1 | V4L2_TUNER_CAP_LANG2;
	index = pd->video_data.context.audio_idx;
	tuner->rxsubchans = pd_audio_modes[index].v4l2_audio_sub;
	tuner->audmode = pd_audio_modes[index].v4l2_audio_mode;
	tuner->afc = 0;
	FUNC1(front);
	return 0;
}