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
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int hwpwrctrl; int nphy_txpwrctrl; int txpwrctrl; TYPE_1__* sh; int /*<<< orphan*/  saved_txpwr_idx; int /*<<< orphan*/  d11core; int /*<<< orphan*/  hwpwrctrl_capable; } ;
struct TYPE_2__ {int /*<<< orphan*/  physhim; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct brcms_phy*) ; 
 int MCTL_EN_MAC ; 
 scalar_t__ PHY_TPC_HW_OFF ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maccontrol ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int) ; 

void FUNC8(struct brcms_phy_pub *ppi, bool hwpwrctrl)
{
	struct brcms_phy *pi = (struct brcms_phy *) ppi;
	bool suspend;

	if (!pi->hwpwrctrl_capable)
		return;

	pi->hwpwrctrl = hwpwrctrl;
	pi->nphy_txpwrctrl = hwpwrctrl;
	pi->txpwrctrl = hwpwrctrl;

	if (FUNC1(pi)) {
		suspend = (0 == (FUNC2(pi->d11core,
					     FUNC0(maccontrol)) &
				 MCTL_EN_MAC));
		if (!suspend)
			FUNC5(pi->sh->physhim);

		FUNC7(pi, pi->nphy_txpwrctrl);
		if (pi->nphy_txpwrctrl == PHY_TPC_HW_OFF)
			FUNC6(pi);
		else
			FUNC3(pi, 0x1e7, (0x7f << 0),
				    pi->saved_txpwr_idx);

		if (!suspend)
			FUNC4(pi->sh->physhim);
	}
}