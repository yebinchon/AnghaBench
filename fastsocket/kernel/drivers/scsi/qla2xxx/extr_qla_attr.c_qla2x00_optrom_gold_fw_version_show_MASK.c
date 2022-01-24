#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qla_hw_data {int* gold_fw_version; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_3__ {struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev,
    struct device_attribute *attr, char *buf)
{
	scsi_qla_host_t *vha = FUNC3(FUNC2(dev));
	struct qla_hw_data *ha = vha->hw;

	if (!FUNC0(ha) && !FUNC1(ha))
		return FUNC4(buf, PAGE_SIZE, "\n");

	return FUNC4(buf, PAGE_SIZE, "%d.%02d.%02d (%d)\n",
	    ha->gold_fw_version[0], ha->gold_fw_version[1],
	    ha->gold_fw_version[2], ha->gold_fw_version[3]);
}