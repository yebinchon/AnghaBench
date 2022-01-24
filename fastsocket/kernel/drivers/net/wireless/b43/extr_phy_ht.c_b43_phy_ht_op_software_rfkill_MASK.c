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
struct TYPE_2__ {int radio_ver; int /*<<< orphan*/  channel; } ;
struct b43_wldev {TYPE_1__ phy; int /*<<< orphan*/  wl; } ;

/* Variables and functions */
 int B43_MACCTL_ENABLED ; 
 int /*<<< orphan*/  B43_MMIO_MACCTL ; 
 int /*<<< orphan*/  B43_PHY_HT_RF_CTL1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 
 int FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC7(struct b43_wldev *dev,
					bool blocked)
{
	if (FUNC4(dev, B43_MMIO_MACCTL) & B43_MACCTL_ENABLED)
		FUNC6(dev->wl, "MAC not suspended\n");

	/* In the following PHY ops we copy wl's dummy behaviour.
	 * TODO: Find out if reads (currently hidden in masks/masksets) are
	 * needed and replace following ops with just writes or w&r.
	 * Note: B43_PHY_HT_RF_CTL1 register is tricky, wrong operation can
	 * cause delayed (!) machine lock up. */
	if (blocked) {
		FUNC1(dev, B43_PHY_HT_RF_CTL1, 0);
	} else {
		FUNC1(dev, B43_PHY_HT_RF_CTL1, 0);
		FUNC2(dev, B43_PHY_HT_RF_CTL1, 0, 0x1);
		FUNC1(dev, B43_PHY_HT_RF_CTL1, 0);
		FUNC2(dev, B43_PHY_HT_RF_CTL1, 0, 0x2);

		if (dev->phy.radio_ver == 0x2059)
			FUNC3(dev);
		else
			FUNC0(1);

		FUNC5(dev, dev->phy.channel);
	}
}