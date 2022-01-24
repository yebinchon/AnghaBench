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
struct dm_ioctl {int flags; } ;

/* Variables and functions */
 int DM_SUSPEND_FLAG ; 
 int FUNC0 (struct dm_ioctl*) ; 
 int FUNC1 (struct dm_ioctl*) ; 

__attribute__((used)) static int FUNC2(struct dm_ioctl *param, size_t param_size)
{
	if (param->flags & DM_SUSPEND_FLAG)
		return FUNC1(param);

	return FUNC0(param);
}