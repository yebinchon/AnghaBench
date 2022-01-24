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
typedef  int /*<<< orphan*/  u8 ;
struct sas_phy {int dummy; } ;
struct pm8001_tmf_task {int /*<<< orphan*/  tmf; } ;
struct pm8001_hba_info {int dummy; } ;
struct pm8001_device {int /*<<< orphan*/  device_id; } ;
struct domain_device {struct pm8001_device* lldd_dev; } ;
struct TYPE_2__ {int (* set_dev_state_req ) (struct pm8001_hba_info*,struct pm8001_device*,int) ;} ;

/* Variables and functions */
 TYPE_1__* PM8001_CHIP_DISP ; 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TMF_LU_RESET ; 
 int TMF_RESP_FUNC_FAILED ; 
 scalar_t__ FUNC1 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct pm8001_hba_info*,struct pm8001_device*,struct domain_device*,int,int /*<<< orphan*/ ) ; 
 struct pm8001_hba_info* FUNC4 (struct domain_device*) ; 
 int FUNC5 (struct domain_device*,int /*<<< orphan*/ *,struct pm8001_tmf_task*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 struct sas_phy* FUNC7 (struct domain_device*) ; 
 int FUNC8 (struct sas_phy*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sas_phy*) ; 
 int FUNC10 (struct pm8001_hba_info*,struct pm8001_device*,int) ; 

int FUNC11(struct domain_device *dev, u8 *lun)
{
	int rc = TMF_RESP_FUNC_FAILED;
	struct pm8001_tmf_task tmf_task;
	struct pm8001_device *pm8001_dev = dev->lldd_dev;
	struct pm8001_hba_info *pm8001_ha = FUNC4(dev);
	if (FUNC1(dev)) {
		struct sas_phy *phy = FUNC7(dev);
		rc = FUNC3(pm8001_ha, pm8001_dev ,
			dev, 1, 0);
		rc = FUNC8(phy, 1);
		FUNC9(phy);
		rc = PM8001_CHIP_DISP->set_dev_state_req(pm8001_ha,
			pm8001_dev, 0x01);
		FUNC2(2000);
	} else {
		tmf_task.tmf = TMF_LU_RESET;
		rc = FUNC5(dev, lun, &tmf_task);
	}
	/* If failed, fall-through I_T_Nexus reset */
	FUNC0(pm8001_ha, FUNC6("for device[%x]:rc=%d\n",
		pm8001_dev->device_id, rc));
	return rc;
}