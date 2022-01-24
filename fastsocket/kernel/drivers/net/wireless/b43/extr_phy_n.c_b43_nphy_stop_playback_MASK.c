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
typedef  int u16 ;
struct TYPE_2__ {struct b43_phy_n* n; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_n {int bb_mult_save; scalar_t__ hang_avoid; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_NPHY_IQLOCAL_CMDGCTL ; 
 int /*<<< orphan*/  B43_NPHY_SAMP_CMD ; 
 int /*<<< orphan*/  B43_NPHY_SAMP_CMD_STOP ; 
 int /*<<< orphan*/  B43_NPHY_SAMP_STAT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct b43_wldev *dev)
{
	struct b43_phy_n *nphy = dev->phy.n;
	u16 tmp;

	if (nphy->hang_avoid)
		FUNC1(dev, 1);

	tmp = FUNC4(dev, B43_NPHY_SAMP_STAT);
	if (tmp & 0x1)
		FUNC5(dev, B43_NPHY_SAMP_CMD, B43_NPHY_SAMP_CMD_STOP);
	else if (tmp & 0x2)
		FUNC3(dev, B43_NPHY_IQLOCAL_CMDGCTL, 0x7FFF);

	FUNC3(dev, B43_NPHY_SAMP_CMD, ~0x0004);

	if (nphy->bb_mult_save & 0x80000000) {
		tmp = nphy->bb_mult_save & 0xFFFF;
		FUNC2(dev, FUNC0(15, 87), tmp);
		nphy->bb_mult_save = 0;
	}

	if (nphy->hang_avoid)
		FUNC1(dev, 0);
}