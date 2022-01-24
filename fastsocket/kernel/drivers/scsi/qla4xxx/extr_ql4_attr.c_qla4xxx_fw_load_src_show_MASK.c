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
struct TYPE_2__ {int fw_load_source; } ;
struct scsi_qla_host {TYPE_1__ fw_info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 struct scsi_qla_host* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *dev, struct device_attribute *attr,
			 char *buf)
{
	struct scsi_qla_host *ha = FUNC2(FUNC0(dev));
	char *load_src = NULL;

	switch (ha->fw_info.fw_load_source) {
	case 1:
		load_src = "Flash Primary";
		break;
	case 2:
		load_src = "Flash Secondary";
		break;
	case 3:
		load_src = "Host Download";
		break;
	}

	return FUNC1(buf, PAGE_SIZE, "%s\n", load_src);
}