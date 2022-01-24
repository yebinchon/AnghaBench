#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* hw_version; } ;
struct qla_hw_data {int* product_id; TYPE_1__ mr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_5__ {struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev, struct device_attribute *attr,
		    char *buf)
{
	scsi_qla_host_t *vha = FUNC2(FUNC1(dev));
	struct qla_hw_data *ha = vha->hw;

	if (FUNC0(vha->hw))
		return FUNC3(buf, PAGE_SIZE, "%s\n",
		    vha->hw->mr.hw_version);

	return FUNC3(buf, PAGE_SIZE, "%04x %04x %04x %04x\n",
	    ha->product_id[0], ha->product_id[1], ha->product_id[2],
	    ha->product_id[3]);
}