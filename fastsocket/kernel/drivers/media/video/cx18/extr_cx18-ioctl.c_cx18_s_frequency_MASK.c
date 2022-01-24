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
struct file {int dummy; } ;
struct cx18_open_id {int /*<<< orphan*/  prio; struct cx18* cx; } ;
struct cx18 {int /*<<< orphan*/  prio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct cx18*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_frequency*) ; 
 int /*<<< orphan*/  FUNC2 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC3 (struct cx18*) ; 
 int /*<<< orphan*/  s_frequency ; 
 int /*<<< orphan*/  tuner ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC5(struct file *file, void *fh, struct v4l2_frequency *vf)
{
	struct cx18_open_id *id = fh;
	struct cx18 *cx = id->cx;
	int ret;

	ret = FUNC4(&cx->prio, id->prio);
	if (ret)
		return ret;

	if (vf->tuner != 0)
		return -EINVAL;

	FUNC2(cx);
	FUNC0("v4l2 ioctl: set frequency %d\n", vf->frequency);
	FUNC1(cx, tuner, s_frequency, vf);
	FUNC3(cx);
	return 0;
}