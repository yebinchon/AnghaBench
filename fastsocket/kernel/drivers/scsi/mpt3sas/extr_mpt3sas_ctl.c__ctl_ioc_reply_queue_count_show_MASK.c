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
typedef  int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int IOCCapabilities; } ;
struct MPT3SAS_ADAPTER {int reply_queue_count; scalar_t__ msix_enable; TYPE_1__ facts; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int MPI2_IOCFACTS_CAPABILITY_MSI_X_INDEX ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct Scsi_Host* FUNC0 (struct device*) ; 
 struct MPT3SAS_ADAPTER* FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *cdev,
	struct device_attribute *attr, char *buf)
{
	u8 reply_queue_count;
	struct Scsi_Host *shost = FUNC0(cdev);
	struct MPT3SAS_ADAPTER *ioc = FUNC1(shost);

	if ((ioc->facts.IOCCapabilities &
	    MPI2_IOCFACTS_CAPABILITY_MSI_X_INDEX) && ioc->msix_enable)
		reply_queue_count = ioc->reply_queue_count;
	else
		reply_queue_count = 1;

	return FUNC2(buf, PAGE_SIZE, "%d\n", reply_queue_count);
}