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
 unsigned int DRM_COMMAND_BASE ; 
 unsigned int FUNC0 (unsigned int) ; 
 long FUNC1 (struct file*,unsigned int,unsigned long) ; 
 int FUNC2 (struct file*,unsigned int,unsigned long) ; 

long FUNC3(struct file *filp, unsigned int cmd, unsigned long arg)
{
	unsigned int nr = FUNC0(cmd);
	int ret;

	if (nr < DRM_COMMAND_BASE)
		return FUNC1(filp, cmd, arg);

	ret = FUNC2(filp, cmd, arg);

	return ret;
}