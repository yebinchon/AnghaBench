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
struct TYPE_2__ {int fw_major; int fw_minor; int fw_patch; int fw_build; } ;
struct scsi_qla_host {TYPE_1__ fw_info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 struct scsi_qla_host* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev,
			struct device_attribute *attr, char *buf)
{
	struct scsi_qla_host *ha = FUNC3(FUNC0(dev));

	if (FUNC1(ha))
		return FUNC2(buf, PAGE_SIZE, "%d.%02d.%02d (%x)\n",
				ha->fw_info.fw_major, ha->fw_info.fw_minor,
				ha->fw_info.fw_patch, ha->fw_info.fw_build);
	else
		return FUNC2(buf, PAGE_SIZE, "%d.%02d.%02d.%02d\n",
				ha->fw_info.fw_major, ha->fw_info.fw_minor,
				ha->fw_info.fw_patch, ha->fw_info.fw_build);
}