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
struct scsi_device {int dummy; } ;
struct device_driver {int (* resume ) (struct device*) ;} ;
struct device {struct device_driver* driver; int /*<<< orphan*/ * type; } ;

/* Variables and functions */
 int /*<<< orphan*/  scsi_dev_type ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_device*) ; 
 int FUNC1 (struct device*) ; 
 struct scsi_device* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device * dev)
{
	struct device_driver *drv;
	struct scsi_device *sdev;
	int err = 0;

	if (dev->type != &scsi_dev_type)
		return 0;

	drv = dev->driver;
	sdev = FUNC2(dev);

	if (drv && drv->resume)
		err = drv->resume(dev);

	FUNC0(sdev);

	return err;
}