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
struct scsi_device {struct MPT2SAS_DEVICE* hostdata; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct MPT2SAS_DEVICE {TYPE_1__* sas_target; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {scalar_t__ sas_address; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,unsigned long long) ; 
 struct scsi_device* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC2(struct device *dev, struct device_attribute *attr,
    char *buf)
{
	struct scsi_device *sdev = FUNC1(dev);
	struct MPT2SAS_DEVICE *sas_device_priv_data = sdev->hostdata;

	return FUNC0(buf, PAGE_SIZE, "0x%016llx\n",
	    (unsigned long long)sas_device_priv_data->sas_target->sas_address);
}