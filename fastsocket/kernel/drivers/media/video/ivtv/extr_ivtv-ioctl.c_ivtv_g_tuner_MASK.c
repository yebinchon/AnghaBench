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
struct v4l2_tuner {scalar_t__ index; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct ivtv_open_id {struct ivtv* itv; } ;
struct ivtv {int /*<<< orphan*/  i_flags; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IVTV_F_I_RADIO_USER ; 
 int /*<<< orphan*/  V4L2_TUNER_ANALOG_TV ; 
 int /*<<< orphan*/  V4L2_TUNER_RADIO ; 
 int /*<<< orphan*/  g_tuner ; 
 int /*<<< orphan*/  FUNC0 (struct ivtv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_tuner*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tuner ; 

__attribute__((used)) static int FUNC3(struct file *file, void *fh, struct v4l2_tuner *vt)
{
	struct ivtv *itv = ((struct ivtv_open_id *)fh)->itv;

	if (vt->index != 0)
		return -EINVAL;

	FUNC0(itv, tuner, g_tuner, vt);

	if (FUNC2(IVTV_F_I_RADIO_USER, &itv->i_flags)) {
		FUNC1(vt->name, "ivtv Radio Tuner", sizeof(vt->name));
		vt->type = V4L2_TUNER_RADIO;
	} else {
		FUNC1(vt->name, "ivtv TV Tuner", sizeof(vt->name));
		vt->type = V4L2_TUNER_ANALOG_TV;
	}

	return 0;
}