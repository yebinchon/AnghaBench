#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_device {scalar_t__ type; scalar_t__ no_uld_attach; TYPE_1__* host; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aac_dev {TYPE_2__* fsa_dev; scalar_t__ jbod; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 scalar_t__ CONTAINER_CHANNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ TYPE_DISK ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct scsi_device*) ; 
 size_t FUNC2 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,...) ; 
 struct scsi_device* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct scsi_device *sdev = FUNC4(dev);
	struct aac_dev *aac = (struct aac_dev *)(sdev->host->hostdata);
	if (FUNC1(sdev) != CONTAINER_CHANNEL)
		return FUNC3(buf, PAGE_SIZE, sdev->no_uld_attach
		  ? "Hidden\n" :
		  ((aac->jbod && (sdev->type == TYPE_DISK)) ? "JBOD\n" : ""));
	return FUNC3(buf, PAGE_SIZE, "%s\n",
	  FUNC0(aac->fsa_dev[FUNC2(sdev)].type));
}