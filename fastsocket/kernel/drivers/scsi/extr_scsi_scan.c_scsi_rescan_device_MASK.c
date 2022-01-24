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
struct scsi_driver {int /*<<< orphan*/  owner; int /*<<< orphan*/  (* rescan ) (struct device*) ;} ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct scsi_driver* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct device *dev)
{
	struct scsi_driver *drv;
	
	if (!dev->driver)
		return;

	drv = FUNC2(dev->driver);
	if (FUNC3(drv->owner)) {
		if (drv->rescan)
			drv->rescan(dev);
		FUNC0(drv->owner);
	}
}