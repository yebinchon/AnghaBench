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
struct dm_ioctl {int dummy; } ;

/* Variables and functions */
 int DM_PARAMS_KMALLOC ; 
 int DM_PARAMS_VMALLOC ; 
 int DM_WIPE_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (struct dm_ioctl*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_ioctl*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_ioctl*) ; 

__attribute__((used)) static void FUNC3(struct dm_ioctl *param, size_t param_size, int param_flags)
{
	if (param_flags & DM_WIPE_BUFFER)
		FUNC1(param, 0, param_size);

	if (param_flags & DM_PARAMS_KMALLOC)
		FUNC0(param);
	if (param_flags & DM_PARAMS_VMALLOC)
		FUNC2(param);
}