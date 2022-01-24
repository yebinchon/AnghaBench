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
struct sas_phy {int dummy; } ;
struct pm8001_hba_info {int dummy; } ;
struct pm8001_device {int /*<<< orphan*/  device_id; int /*<<< orphan*/ * setds_completion; } ;
struct domain_device {struct pm8001_device* lldd_dev; } ;
struct TYPE_2__ {int (* set_dev_state_req ) (struct pm8001_hba_info*,struct pm8001_device*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 TYPE_1__* PM8001_CHIP_DISP ; 
 int /*<<< orphan*/  FUNC1 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int TMF_RESP_FUNC_FAILED ; 
 int /*<<< orphan*/  completion_setstate ; 
 scalar_t__ FUNC2 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct pm8001_hba_info*,struct pm8001_device*,struct domain_device*,int,int /*<<< orphan*/ ) ; 
 struct pm8001_hba_info* FUNC5 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 struct sas_phy* FUNC7 (struct domain_device*) ; 
 int FUNC8 (struct sas_phy*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sas_phy*) ; 
 scalar_t__ FUNC10 (struct sas_phy*) ; 
 int FUNC11 (struct pm8001_hba_info*,struct pm8001_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct domain_device *dev)
{
	int rc = TMF_RESP_FUNC_FAILED;
	struct pm8001_device *pm8001_dev;
	struct pm8001_hba_info *pm8001_ha;
	struct sas_phy *phy;

	if (!dev || !dev->lldd_dev)
		return -ENODEV;

	pm8001_dev = dev->lldd_dev;
	pm8001_ha = FUNC5(dev);
	phy = FUNC7(dev);

	if (FUNC2(dev)) {
		FUNC0(completion_setstate);
		if (FUNC10(phy)) {
			rc = 0;
			goto out;
		}
		rc = FUNC8(phy, 1);
		FUNC3(2000);
		rc = FUNC4(pm8001_ha, pm8001_dev ,
			dev, 1, 0);
		pm8001_dev->setds_completion = &completion_setstate;
		rc = PM8001_CHIP_DISP->set_dev_state_req(pm8001_ha,
			pm8001_dev, 0x01);
		FUNC12(&completion_setstate);
	} else {
		rc = FUNC8(phy, 1);
		FUNC3(2000);
	}
	FUNC1(pm8001_ha, FUNC6(" for device[%x]:rc=%d\n",
		pm8001_dev->device_id, rc));
 out:
	FUNC9(phy);
	return rc;
}