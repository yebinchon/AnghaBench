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
typedef  int u8 ;
typedef  int u16 ;
struct b43_phy {scalar_t__ type; } ;
struct b43_wldev {int /*<<< orphan*/  wl; struct b43_phy phy; } ;
struct b43_loctl {scalar_t__ i; scalar_t__ q; } ;

/* Variables and functions */
 scalar_t__ B43_DEBUG ; 
 scalar_t__ B43_PHYTYPE_G ; 
 int /*<<< orphan*/  B43_PHY_LO_CTL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct b43_wldev *dev, struct b43_loctl *control)
{
	struct b43_phy *phy = &dev->phy;
	u16 value;

	if (B43_DEBUG) {
		if (FUNC5(FUNC1(control->i) > 16 || FUNC1(control->q) > 16)) {
			FUNC3(dev->wl, "Invalid LO control pair "
			       "(I: %d, Q: %d)\n", control->i, control->q);
			FUNC4();
			return;
		}
	}
	FUNC0(phy->type != B43_PHYTYPE_G);

	value = (u8) (control->q);
	value |= ((u8) (control->i)) << 8;
	FUNC2(dev, B43_PHY_LO_CTL, value);
}