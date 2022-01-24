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
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_DEBUG ; 
 int UVC_TRACE_IOCTL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int uvc_trace_param ; 
 int /*<<< orphan*/  uvc_v4l2_do_ioctl ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 long FUNC3 (struct file*,unsigned int,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC4(struct file *file,
		     unsigned int cmd, unsigned long arg)
{
	if (uvc_trace_param & UVC_TRACE_IOCTL) {
		FUNC1(KERN_DEBUG, "uvc_v4l2_ioctl(");
		FUNC2(cmd);
		FUNC0(")\n");
	}

	return FUNC3(file, cmd, arg, uvc_v4l2_do_ioctl);
}