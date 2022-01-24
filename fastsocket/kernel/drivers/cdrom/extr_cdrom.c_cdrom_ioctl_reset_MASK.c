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
struct block_device {int dummy; } ;
struct TYPE_2__ {int (* reset ) (struct cdrom_device_info*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  CDC_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CD_DO_IOCTL ; 
 int EACCES ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct block_device*) ; 
 int FUNC4 (struct cdrom_device_info*) ; 

__attribute__((used)) static int FUNC5(struct cdrom_device_info *cdi,
		struct block_device *bdev)
{
	FUNC2(CD_DO_IOCTL, "entering CDROM_RESET\n");

	if (!FUNC1(CAP_SYS_ADMIN))
		return -EACCES;
	if (!FUNC0(CDC_RESET))
		return -ENOSYS;
	FUNC3(bdev);
	return cdi->ops->reset(cdi);
}