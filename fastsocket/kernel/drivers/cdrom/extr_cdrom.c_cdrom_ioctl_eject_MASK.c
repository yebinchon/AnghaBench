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
struct TYPE_2__ {int (* lock_door ) (struct cdrom_device_info*,int /*<<< orphan*/ ) ;int (* tray_move ) (struct cdrom_device_info*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CDC_LOCK ; 
 int /*<<< orphan*/  CDC_OPEN_TRAY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CD_DO_IOCTL ; 
 int EBUSY ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ keeplocked ; 
 int FUNC2 (struct cdrom_device_info*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct cdrom_device_info*,int) ; 

__attribute__((used)) static int FUNC4(struct cdrom_device_info *cdi)
{
	FUNC1(CD_DO_IOCTL, "entering CDROMEJECT\n");

	if (!FUNC0(CDC_OPEN_TRAY))
		return -ENOSYS;
	if (cdi->use_count != 1 || keeplocked)
		return -EBUSY;
	if (FUNC0(CDC_LOCK)) {
		int ret = cdi->ops->lock_door(cdi, 0);
		if (ret)
			return ret;
	}

	return cdi->ops->tray_move(cdi, 1);
}