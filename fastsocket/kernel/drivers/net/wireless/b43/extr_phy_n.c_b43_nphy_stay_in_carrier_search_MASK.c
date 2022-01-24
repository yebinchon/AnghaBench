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
struct b43_phy {struct b43_phy_n* n; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_phy_n {scalar_t__ deaf_count; int const* clip_state; int /*<<< orphan*/  classifier_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int const*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int const*) ; 

__attribute__((used)) static void FUNC4(struct b43_wldev *dev, bool enable)
{
	struct b43_phy *phy = &dev->phy;
	struct b43_phy_n *nphy = phy->n;

	if (enable) {
		static const u16 clip[] = { 0xFFFF, 0xFFFF };
		if (nphy->deaf_count++ == 0) {
			nphy->classifier_state = FUNC0(dev, 0, 0);
			FUNC0(dev, 0x7, 0);
			FUNC1(dev, nphy->clip_state);
			FUNC3(dev, clip);
		}
		FUNC2(dev);
	} else {
		if (--nphy->deaf_count == 0) {
			FUNC0(dev, 0x7, nphy->classifier_state);
			FUNC3(dev, nphy->clip_state);
		}
	}
}