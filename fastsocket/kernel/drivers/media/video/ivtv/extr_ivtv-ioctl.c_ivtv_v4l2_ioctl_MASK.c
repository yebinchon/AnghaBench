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
struct ivtv_open_id {struct ivtv* itv; } ;
struct ivtv {int /*<<< orphan*/  serialize_lock; } ;
struct file {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 unsigned int VIDIOC_DQEVENT ; 
 struct ivtv_open_id* FUNC0 (int /*<<< orphan*/ ) ; 
 long FUNC1 (struct ivtv*,struct file*,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

long FUNC4(struct file *filp, unsigned int cmd, unsigned long arg)
{
	struct ivtv_open_id *id = FUNC0(filp->private_data);
	struct ivtv *itv = id->itv;
	long res;

	/* DQEVENT can block, so this should not run with the serialize lock */
	if (cmd == VIDIOC_DQEVENT)
		return FUNC1(itv, filp, cmd, arg);
	FUNC2(&itv->serialize_lock);
	res = FUNC1(itv, filp, cmd, arg);
	FUNC3(&itv->serialize_lock);
	return res;
}