#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pm8001_hba_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;
struct pm8001_device {scalar_t__ dev_type; int attached_phy; int /*<<< orphan*/ * dcompletion; struct domain_device* sas_device; } ;
struct ex_phy {int /*<<< orphan*/  attached_sas_addr; } ;
struct TYPE_5__ {int num_phys; struct ex_phy* ex_phy; } ;
struct domain_device {scalar_t__ dev_type; TYPE_3__* rphy; int /*<<< orphan*/  sas_addr; TYPE_1__ ex_dev; struct pm8001_device* lldd_dev; struct domain_device* parent; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* reg_dev_req ) (struct pm8001_hba_info*,struct pm8001_device*,int) ;} ;
struct TYPE_6__ {int phy_identifier; } ;
struct TYPE_7__ {TYPE_2__ identify; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  PM8001F_RUN_TIME ; 
 TYPE_4__* PM8001_CHIP_DISP ; 
 int /*<<< orphan*/  FUNC2 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ SAS_END_DEVICE ; 
 scalar_t__ SATA_DEV ; 
 int /*<<< orphan*/  completion ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct pm8001_device* FUNC6 (struct pm8001_hba_info*) ; 
 struct pm8001_hba_info* FUNC7 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct pm8001_hba_info*,struct pm8001_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct domain_device *dev)
{
	unsigned long flags = 0;
	int res = 0;
	struct pm8001_hba_info *pm8001_ha = NULL;
	struct domain_device *parent_dev = dev->parent;
	struct pm8001_device *pm8001_device;
	FUNC0(completion);
	u32 flag = 0;
	pm8001_ha = FUNC7(dev);
	FUNC9(&pm8001_ha->lock, flags);

	pm8001_device = FUNC6(pm8001_ha);
	if (!pm8001_device) {
		res = -1;
		goto found_out;
	}
	pm8001_device->sas_device = dev;
	dev->lldd_dev = pm8001_device;
	pm8001_device->dev_type = dev->dev_type;
	pm8001_device->dcompletion = &completion;
	if (parent_dev && FUNC1(parent_dev->dev_type)) {
		int phy_id;
		struct ex_phy *phy;
		for (phy_id = 0; phy_id < parent_dev->ex_dev.num_phys;
		phy_id++) {
			phy = &parent_dev->ex_dev.ex_phy[phy_id];
			if (FUNC4(phy->attached_sas_addr)
				== FUNC4(dev->sas_addr)) {
				pm8001_device->attached_phy = phy_id;
				break;
			}
		}
		if (phy_id == parent_dev->ex_dev.num_phys) {
			FUNC3(pm8001_ha,
			FUNC8("Error: no attached dev:%016llx"
			" at ex:%016llx.\n", FUNC4(dev->sas_addr),
				FUNC4(parent_dev->sas_addr)));
			res = -1;
		}
	} else {
		if (dev->dev_type == SATA_DEV) {
			pm8001_device->attached_phy =
				dev->rphy->identify.phy_identifier;
				flag = 1; /* directly sata*/
		}
	} /*register this device to HBA*/
	FUNC2(pm8001_ha, FUNC8("Found device\n"));
	PM8001_CHIP_DISP->reg_dev_req(pm8001_ha, pm8001_device, flag);
	FUNC10(&pm8001_ha->lock, flags);
	FUNC12(&completion);
	if (dev->dev_type == SAS_END_DEVICE)
		FUNC5(50);
	pm8001_ha->flags = PM8001F_RUN_TIME;
	return 0;
found_out:
	FUNC10(&pm8001_ha->lock, flags);
	return res;
}