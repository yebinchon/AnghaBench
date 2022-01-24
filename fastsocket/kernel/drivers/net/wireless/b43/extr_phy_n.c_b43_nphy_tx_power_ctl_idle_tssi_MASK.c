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
typedef  int u32 ;
struct b43_phy {int rev; struct b43_phy_n* n; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_phy_n {TYPE_1__* pwr_ctl_info; } ;
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_2__ {int idle_tssi_5g; int idle_tssi_2g; } ;

/* Variables and functions */
 int /*<<< orphan*/  N_RSSI_TSSI_2G ; 
 int /*<<< orphan*/  N_RSSI_W1 ; 
 scalar_t__ FUNC0 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*) ; 
 int FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;
	struct b43_phy_n *nphy = dev->phy.n;

	u32 tmp;
	s32 rssi[4] = { };

	/* TODO: check if we can transmit */

	if (FUNC0(dev))
		FUNC1(dev);

	if (phy->rev >= 7)
		FUNC4(dev, 0x2000, 0, 3, false, 0);
	else if (phy->rev >= 3)
		FUNC3(dev, 0x2000, 0, 3, false);

	FUNC6(dev);
	FUNC7(dev, 0xFA0, 0, false, false);
	FUNC8(20);
	tmp = FUNC2(dev, N_RSSI_TSSI_2G, rssi, 1);
	FUNC6(dev);
	FUNC5(dev, 0, N_RSSI_W1);

	if (phy->rev >= 7)
		FUNC4(dev, 0x2000, 0, 3, true, 0);
	else if (phy->rev >= 3)
		FUNC3(dev, 0x2000, 0, 3, true);

	if (phy->rev >= 3) {
		nphy->pwr_ctl_info[0].idle_tssi_5g = (tmp >> 24) & 0xFF;
		nphy->pwr_ctl_info[1].idle_tssi_5g = (tmp >> 8) & 0xFF;
	} else {
		nphy->pwr_ctl_info[0].idle_tssi_5g = (tmp >> 16) & 0xFF;
		nphy->pwr_ctl_info[1].idle_tssi_5g = tmp & 0xFF;
	}
	nphy->pwr_ctl_info[0].idle_tssi_2g = (tmp >> 24) & 0xFF;
	nphy->pwr_ctl_info[1].idle_tssi_2g = (tmp >> 8) & 0xFF;
}