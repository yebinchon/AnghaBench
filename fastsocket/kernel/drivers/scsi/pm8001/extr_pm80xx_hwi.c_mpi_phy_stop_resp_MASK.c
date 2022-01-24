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
typedef  size_t u32 ;
struct pm8001_phy {scalar_t__ phy_state; } ;
struct pm8001_hba_info {struct pm8001_phy* phy; } ;
struct phy_stop_resp {int /*<<< orphan*/  phyid; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,size_t) ; 

__attribute__((used)) static int FUNC3(struct pm8001_hba_info *pm8001_ha, void *piomb)
{
	struct phy_stop_resp *pPayload =
		(struct phy_stop_resp *)(piomb + 4);
	u32 status =
		FUNC1(pPayload->status);
	u32 phyid =
		FUNC1(pPayload->phyid);
	struct pm8001_phy *phy = &pm8001_ha->phy[phyid];
	FUNC0(pm8001_ha,
			FUNC2("phy:0x%x status:0x%x\n",
					phyid, status));
	if (status == 0)
		phy->phy_state = 0;
	return 0;
}