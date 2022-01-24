#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct scsi_disk {TYPE_1__* device; scalar_t__ WCE; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int event; } ;
typedef  TYPE_2__ pm_message_t ;
struct TYPE_4__ {scalar_t__ manage_start_stop; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_NOTICE ; 
 int PM_EVENT_SLEEP ; 
 struct scsi_disk* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_disk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_disk*,char*) ; 
 int FUNC3 (struct scsi_disk*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct scsi_disk*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, pm_message_t mesg)
{
	struct scsi_disk *sdkp = FUNC0(dev);
	int ret = 0;

	if (!sdkp)
		return 0;	/* this can happen */

	if (sdkp->WCE) {
		FUNC2(KERN_NOTICE, sdkp, "Synchronizing SCSI cache\n");
		ret = FUNC4(sdkp);
		if (ret)
			goto done;
	}

	if ((mesg.event & PM_EVENT_SLEEP) && sdkp->device->manage_start_stop) {
		FUNC2(KERN_NOTICE, sdkp, "Stopping disk\n");
		ret = FUNC3(sdkp, 0);
	}

done:
	FUNC1(sdkp);
	return ret;
}