#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct scsi_device {TYPE_1__* host; } ;
struct sbp2_lu {int /*<<< orphan*/  lun; TYPE_3__* ud; TYPE_2__* ne; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_6__ {int /*<<< orphan*/  id; int /*<<< orphan*/  directory_id; } ;
struct TYPE_5__ {scalar_t__ guid; } ;
struct TYPE_4__ {scalar_t__* hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ sbp2_long_sysfs_ieee1394_id ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct scsi_device* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
					   struct device_attribute *attr,
					   char *buf)
{
	struct scsi_device *sdev;
	struct sbp2_lu *lu;

	if (!(sdev = FUNC2(dev)))
		return 0;

	if (!(lu = (struct sbp2_lu *)sdev->host->hostdata[0]))
		return 0;

	if (sbp2_long_sysfs_ieee1394_id)
		return FUNC1(buf, "%016Lx:%06x:%04x\n",
				(unsigned long long)lu->ne->guid,
				lu->ud->directory_id, FUNC0(lu->lun));
	else
		return FUNC1(buf, "%016Lx:%d:%d\n",
				(unsigned long long)lu->ne->guid,
				lu->ud->id, FUNC0(lu->lun));
}