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
struct scsi_device {scalar_t__ hostdata; TYPE_1__* host; } ;
struct ipr_resource_entry {int bus; int target; int lun; int /*<<< orphan*/  res_path; } ;
struct ipr_ioa_cfg {TYPE_2__* host; scalar_t__ sis64; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_4__ {int host_no; int /*<<< orphan*/  host_lock; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int IPR_MAX_RES_PATH_LENGTH ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 struct scsi_device* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct scsi_device *sdev = FUNC4(dev);
	struct ipr_ioa_cfg *ioa_cfg = (struct ipr_ioa_cfg *)sdev->host->hostdata;
	struct ipr_resource_entry *res;
	unsigned long lock_flags = 0;
	ssize_t len = -ENXIO;
	char buffer[IPR_MAX_RES_PATH_LENGTH];

	FUNC2(ioa_cfg->host->host_lock, lock_flags);
	res = (struct ipr_resource_entry *)sdev->hostdata;
	if (res && ioa_cfg->sis64)
		len = FUNC1(buf, PAGE_SIZE, "%s\n",
			       FUNC0(res->res_path, buffer,
						     sizeof(buffer)));
	else if (res)
		len = FUNC1(buf, PAGE_SIZE, "%d:%d:%d:%d\n", ioa_cfg->host->host_no,
			       res->bus, res->target, res->lun);

	FUNC3(ioa_cfg->host->host_lock, lock_flags);
	return len;
}