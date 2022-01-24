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
struct b43_phy {int rev; struct b43_phy_n* n; } ;
struct b43_wldev {struct b43_phy phy; int /*<<< orphan*/  wl; } ;
struct b43_phy_n {scalar_t__ hang_avoid; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_NPHY_IQFLIP ; 
 int B43_NPHY_IQFLIP_ADC1 ; 
 int B43_NPHY_IQFLIP_ADC2 ; 
 scalar_t__ IEEE80211_BAND_5GHZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;
	struct b43_phy_n *nphy = phy->n;

	if (FUNC0(dev->wl) == IEEE80211_BAND_5GHZ)
		FUNC1(dev, 1, 0);
	else
		FUNC1(dev, 1, 1);

	if (nphy->hang_avoid)
		FUNC2(dev, 1);

	FUNC6(dev, B43_NPHY_IQFLIP,
		    B43_NPHY_IQFLIP_ADC1 | B43_NPHY_IQFLIP_ADC2);

	if (dev->phy.rev >= 7)
		FUNC5(dev);
	else if (dev->phy.rev >= 3)
		FUNC4(dev);
	else
		FUNC3(dev);

	if (nphy->hang_avoid)
		FUNC2(dev, 0);
}