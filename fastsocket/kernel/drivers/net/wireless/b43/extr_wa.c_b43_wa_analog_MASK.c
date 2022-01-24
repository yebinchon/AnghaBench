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
typedef  int u16 ;
struct b43_phy {scalar_t__ type; } ;
struct b43_wldev {struct b43_phy phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_OFDMTAB_DAC ; 
 scalar_t__ B43_PHYTYPE_A ; 
 int B43_PHYVER_VERSION ; 
 int /*<<< orphan*/  B43_PHY_PWRDOWN ; 
 int /*<<< orphan*/  B43_PHY_VERSION_OFDM ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;
	u16 ofdmrev;

	ofdmrev = FUNC1(dev, B43_PHY_VERSION_OFDM) & B43_PHYVER_VERSION;
	if (ofdmrev > 2) {
		if (phy->type == B43_PHYTYPE_A)
			FUNC2(dev, B43_PHY_PWRDOWN, 0x1808);
		else
			FUNC2(dev, B43_PHY_PWRDOWN, 0x1000);
	} else {
		FUNC0(dev, B43_OFDMTAB_DAC, 3, 0x1044);
		FUNC0(dev, B43_OFDMTAB_DAC, 4, 0x7201);
		FUNC0(dev, B43_OFDMTAB_DAC, 6, 0x0040);
	}
}