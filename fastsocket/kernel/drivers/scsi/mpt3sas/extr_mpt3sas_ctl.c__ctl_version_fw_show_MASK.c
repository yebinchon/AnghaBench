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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_3__ {int Word; } ;
struct TYPE_4__ {TYPE_1__ FWVersion; } ;
struct MPT3SAS_ADAPTER {TYPE_2__ facts; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct Scsi_Host* FUNC0 (struct device*) ; 
 struct MPT3SAS_ADAPTER* FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int,int,int,int) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *cdev, struct device_attribute *attr,
	char *buf)
{
	struct Scsi_Host *shost = FUNC0(cdev);
	struct MPT3SAS_ADAPTER *ioc = FUNC1(shost);

	return FUNC2(buf, PAGE_SIZE, "%02d.%02d.%02d.%02d\n",
	    (ioc->facts.FWVersion.Word & 0xFF000000) >> 24,
	    (ioc->facts.FWVersion.Word & 0x00FF0000) >> 16,
	    (ioc->facts.FWVersion.Word & 0x0000FF00) >> 8,
	    ioc->facts.FWVersion.Word & 0x000000FF);
}