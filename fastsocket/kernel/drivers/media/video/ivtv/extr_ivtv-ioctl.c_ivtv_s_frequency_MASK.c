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
struct v4l2_frequency {scalar_t__ tuner; int /*<<< orphan*/  frequency; } ;
struct ivtv_open_id {struct ivtv* itv; } ;
struct ivtv {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ivtv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_frequency*) ; 
 int /*<<< orphan*/  FUNC2 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC3 (struct ivtv*) ; 
 int /*<<< orphan*/  s_frequency ; 
 int /*<<< orphan*/  tuner ; 

int FUNC4(struct file *file, void *fh, struct v4l2_frequency *vf)
{
	struct ivtv *itv = ((struct ivtv_open_id *)fh)->itv;

	if (vf->tuner != 0)
		return -EINVAL;

	FUNC2(itv);
	FUNC0("v4l2 ioctl: set frequency %d\n", vf->frequency);
	FUNC1(itv, tuner, s_frequency, vf);
	FUNC3(itv);
	return 0;
}