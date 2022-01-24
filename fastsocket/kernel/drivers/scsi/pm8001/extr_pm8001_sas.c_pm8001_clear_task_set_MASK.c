#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct pm8001_tmf_task {int /*<<< orphan*/  tmf; } ;
struct pm8001_hba_info {int dummy; } ;
struct pm8001_device {int /*<<< orphan*/  device_id; } ;
struct domain_device {struct pm8001_device* lldd_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TMF_CLEAR_TASK_SET ; 
 int TMF_RESP_FUNC_FAILED ; 
 struct pm8001_hba_info* FUNC1 (struct domain_device*) ; 
 int FUNC2 (struct domain_device*,int /*<<< orphan*/ *,struct pm8001_tmf_task*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

int FUNC4(struct domain_device *dev, u8 *lun)
{
	int rc = TMF_RESP_FUNC_FAILED;
	struct pm8001_tmf_task tmf_task;
	struct pm8001_device *pm8001_dev = dev->lldd_dev;
	struct pm8001_hba_info *pm8001_ha = FUNC1(dev);

	FUNC0(pm8001_ha,
		FUNC3("I_T_L_Q clear task set[%x]\n",
		pm8001_dev->device_id));
	tmf_task.tmf = TMF_CLEAR_TASK_SET;
	rc = FUNC2(dev, lun, &tmf_task);
	return rc;
}