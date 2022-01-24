#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cdrom_device_info {int use_count; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* lock_door ) (struct cdrom_device_info*,unsigned long) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  CDC_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CD_DO_IOCTL ; 
 int EBUSY ; 
 int EDRIVE_CANT_DO_THIS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int keeplocked ; 
 int FUNC3 (struct cdrom_device_info*,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct cdrom_device_info *cdi,
		unsigned long arg)
{
	FUNC2(CD_DO_IOCTL, "%socking door.\n", arg ? "L" : "Unl");

	if (!FUNC0(CDC_LOCK))
		return -EDRIVE_CANT_DO_THIS;

	keeplocked = arg ? 1 : 0;

	/*
	 * Don't unlock the door on multiple opens by default, but allow
	 * root to do so.
	 */
	if (cdi->use_count != 1 && !arg && !FUNC1(CAP_SYS_ADMIN))
		return -EBUSY;
	return cdi->ops->lock_door(cdi, arg);
}