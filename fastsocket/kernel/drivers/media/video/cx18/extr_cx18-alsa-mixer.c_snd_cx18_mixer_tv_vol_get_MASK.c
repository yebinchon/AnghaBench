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
struct v4l2_control {int /*<<< orphan*/  value; int /*<<< orphan*/  id; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_cx18_card {int /*<<< orphan*/  v4l2_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/ * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct cx18 {int /*<<< orphan*/  sd_av; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_CID_AUDIO_VOLUME ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_ctrl ; 
 int /*<<< orphan*/  FUNC2 (struct snd_cx18_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_cx18_card*) ; 
 struct snd_cx18_card* FUNC4 (struct snd_kcontrol*) ; 
 struct cx18* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_control*) ; 

__attribute__((used)) static int FUNC7(struct snd_kcontrol *kctl,
				     struct snd_ctl_elem_value *uctl)
{
	struct snd_cx18_card *cxsc = FUNC4(kctl);
	struct cx18 *cx = FUNC5(cxsc->v4l2_dev);
	struct v4l2_control vctrl;
	int ret;

	vctrl.id = V4L2_CID_AUDIO_VOLUME;
	vctrl.value = FUNC1(uctl->value.integer.value[0]);

	FUNC2(cxsc);
	ret = FUNC6(cx->sd_av, core, g_ctrl, &vctrl);
	FUNC3(cxsc);

	if (!ret)
		uctl->value.integer.value[0] = FUNC0(vctrl.value);
	return ret;
}