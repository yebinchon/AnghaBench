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
struct scsi_device_handler {int dummy; } ;
struct scsi_device {int dummy; } ;
struct notifier_block {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned long BUS_NOTIFY_ADD_DEVICE ; 
 unsigned long BUS_NOTIFY_DEL_DEVICE ; 
 int FUNC0 (struct device*,int /*<<< orphan*/ *) ; 
 struct scsi_device_handler* FUNC1 (int /*<<< orphan*/ *,struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct scsi_device*,struct scsi_device_handler*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scsi_dh_state_attr ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 struct scsi_device* FUNC6 (struct device*) ; 

__attribute__((used)) static int FUNC7(struct notifier_block *nb,
			    unsigned long action, void *data)
{
	struct device *dev = data;
	struct scsi_device *sdev;
	int err = 0;
	struct scsi_device_handler *devinfo = NULL;

	if (!FUNC5(dev))
		return 0;

	sdev = FUNC6(dev);

	if (action == BUS_NOTIFY_ADD_DEVICE) {
		err = FUNC0(dev, &scsi_dh_state_attr);
		/* don't care about err */
		devinfo = FUNC1(NULL, sdev);
		if (devinfo)
			err = FUNC3(sdev, devinfo);
	} else if (action == BUS_NOTIFY_DEL_DEVICE) {
		FUNC2(dev, &scsi_dh_state_attr);
		FUNC4(sdev, NULL);
	}
	return err;
}