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
struct v4l2_tuner {scalar_t__ index; } ;
struct file {int dummy; } ;
struct cx18_open_id {int /*<<< orphan*/  prio; struct cx18* cx; } ;
struct cx18 {int /*<<< orphan*/  prio; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct cx18*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_tuner*) ; 
 int /*<<< orphan*/  s_tuner ; 
 int /*<<< orphan*/  tuner ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *fh, struct v4l2_tuner *vt)
{
	struct cx18_open_id *id = fh;
	struct cx18 *cx = id->cx;
	int ret;

	ret = FUNC1(&cx->prio, id->prio);
	if (ret)
		return ret;

	if (vt->index != 0)
		return -EINVAL;

	FUNC0(cx, tuner, s_tuner, vt);
	return 0;
}