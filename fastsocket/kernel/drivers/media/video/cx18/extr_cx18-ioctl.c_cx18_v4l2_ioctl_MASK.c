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
struct video_device {int debug; } ;
struct file {struct cx18_open_id* private_data; } ;
struct cx18_open_id {struct cx18* cx; } ;
struct cx18 {int /*<<< orphan*/  serialize_lock; } ;

/* Variables and functions */
 int CX18_DBGFLG_IOCTL ; 
 int V4L2_DEBUG_IOCTL ; 
 int V4L2_DEBUG_IOCTL_ARG ; 
 int cx18_debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct video_device* FUNC2 (struct file*) ; 
 long FUNC3 (struct file*,unsigned int,unsigned long) ; 

long FUNC4(struct file *filp, unsigned int cmd,
		    unsigned long arg)
{
	struct video_device *vfd = FUNC2(filp);
	struct cx18_open_id *id = filp->private_data;
	struct cx18 *cx = id->cx;
	long res;

	FUNC0(&cx->serialize_lock);

	/* FIXME - consolidate v4l2_prio_check()'s here */

	if (cx18_debug & CX18_DBGFLG_IOCTL)
		vfd->debug = V4L2_DEBUG_IOCTL | V4L2_DEBUG_IOCTL_ARG;
	res = FUNC3(filp, cmd, arg);
	vfd->debug = 0;
	FUNC1(&cx->serialize_lock);
	return res;
}