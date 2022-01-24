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
typedef  scalar_t__ u32 ;
struct pm8001_hba_info {int dummy; } ;
struct local_phy_ctl_resp {int /*<<< orphan*/  phyop_phyid; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 scalar_t__ ID_BITS ; 
 scalar_t__ OP_BITS ; 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__) ; 

int FUNC3(struct pm8001_hba_info *pm8001_ha, void *piomb)
{
	struct local_phy_ctl_resp *pPayload =
		(struct local_phy_ctl_resp *)(piomb + 4);
	u32 status = FUNC1(pPayload->status);
	u32 phy_id = FUNC1(pPayload->phyop_phyid) & ID_BITS;
	u32 phy_op = FUNC1(pPayload->phyop_phyid) & OP_BITS;
	if (status != 0) {
		FUNC0(pm8001_ha,
			FUNC2("%x phy execute %x phy op failed!\n",
			phy_id, phy_op));
	} else
		FUNC0(pm8001_ha,
			FUNC2("%x phy execute %x phy op success!\n",
			phy_id, phy_op));
	return 0;
}