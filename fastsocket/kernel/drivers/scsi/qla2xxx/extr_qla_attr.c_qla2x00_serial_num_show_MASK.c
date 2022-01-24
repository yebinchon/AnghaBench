#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {char* serial_num; } ;
struct qla_hw_data {int serial0; int serial2; int serial1; TYPE_1__ mr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_6__ {struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static ssize_t
FUNC6(struct device *dev, struct device_attribute *attr,
			char *buf)
{
	scsi_qla_host_t *vha = FUNC4(FUNC2(dev));
	struct qla_hw_data *ha = vha->hw;
	uint32_t sn;

	if (FUNC1(vha->hw)) {
		return FUNC5(buf, PAGE_SIZE, "%s\n",
		    vha->hw->mr.serial_num);
	} else if (FUNC0(ha)) {
		FUNC3(vha, "SN", buf, PAGE_SIZE);
		return FUNC5(buf, PAGE_SIZE, "%s\n", buf);
	}

	sn = ((ha->serial0 & 0x1f) << 16) | (ha->serial2 << 8) | ha->serial1;
	return FUNC5(buf, PAGE_SIZE, "%c%05d\n", 'A' + sn / 100000,
	    sn % 100000);
}