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
struct brcms_phy {TYPE_1__* sh; int /*<<< orphan*/  d11core; int /*<<< orphan*/  nphy_txpwrctrl; } ;
struct TYPE_2__ {int /*<<< orphan*/  physhim; int /*<<< orphan*/  corerev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MCTL_PHYLOCK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maccontrol ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*) ; 

void FUNC8(struct brcms_phy *pi)
{
	u8 tx_pwr_ctrl_state;
	FUNC5(pi);
	FUNC7(pi);

	tx_pwr_ctrl_state = pi->nphy_txpwrctrl;

	if (FUNC1(pi->sh->corerev, 11) || FUNC1(pi->sh->corerev, 12)) {
		FUNC4(pi->sh->physhim, MCTL_PHYLOCK, MCTL_PHYLOCK);
		(void)FUNC2(pi->d11core, FUNC0(maccontrol));
		FUNC3(1);
	}

	FUNC6(pi, tx_pwr_ctrl_state);

	if (FUNC1(pi->sh->corerev, 11) || FUNC1(pi->sh->corerev, 12))
		FUNC4(pi->sh->physhim, MCTL_PHYLOCK, 0);
}