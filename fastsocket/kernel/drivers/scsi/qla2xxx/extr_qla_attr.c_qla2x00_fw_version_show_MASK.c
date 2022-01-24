#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct qla_hw_data {TYPE_1__* isp_ops; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_7__ {struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;
struct TYPE_6__ {char* (* fw_version_str ) (TYPE_2__*,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC3 (TYPE_2__*,char*) ; 
 char* FUNC4 (TYPE_2__*,char*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev,
			struct device_attribute *attr, char *buf)
{
	scsi_qla_host_t *vha = FUNC1(FUNC0(dev));
	struct qla_hw_data *ha = vha->hw;
	char fw_str[128];

	return FUNC2(buf, PAGE_SIZE, "%s\n",
	    ha->isp_ops->fw_version_str(vha, fw_str));
}