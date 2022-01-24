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
struct cdrom_device_info {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* tray_move ) (struct cdrom_device_info*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CDC_CLOSE_TRAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CD_DO_IOCTL ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct cdrom_device_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct cdrom_device_info *cdi)
{
	FUNC1(CD_DO_IOCTL, "entering CDROMCLOSETRAY\n");

	if (!FUNC0(CDC_CLOSE_TRAY))
		return -ENOSYS;
	return cdi->ops->tray_move(cdi, 0);
}