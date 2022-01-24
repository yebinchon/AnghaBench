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
struct b43_phy {struct b43_phy_a* a; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_phy_a {struct b43_phy_a* tssi2dbm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct b43_phy_a*) ; 

__attribute__((used)) static void FUNC1(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;
	struct b43_phy_a *aphy = phy->a;

	FUNC0(aphy->tssi2dbm);
	aphy->tssi2dbm = NULL;

	FUNC0(aphy);
	dev->phy.a = NULL;
}