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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_5__ {TYPE_1__* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;
struct TYPE_4__ {char* model_desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *dev, struct device_attribute *attr,
			char *buf)
{
	scsi_qla_host_t *vha = FUNC1(FUNC0(dev));
	return FUNC2(buf, PAGE_SIZE, "%s\n",
	    vha->hw->model_desc ? vha->hw->model_desc : "");
}