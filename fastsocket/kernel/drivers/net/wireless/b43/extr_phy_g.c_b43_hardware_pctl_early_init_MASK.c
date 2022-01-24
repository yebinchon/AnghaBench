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
struct b43_phy {int radio_ver; int radio_rev; } ;
struct b43_wldev {struct b43_phy phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int,int) ; 

__attribute__((used)) static void FUNC5(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;

	if (!FUNC0(dev)) {
		FUNC4(dev, 0x047A, 0xC111);
		return;
	}

	FUNC1(dev, 0x0036, 0xFEFF);
	FUNC4(dev, 0x002F, 0x0202);
	FUNC3(dev, 0x047C, 0x0002);
	FUNC3(dev, 0x047A, 0xF000);
	if (phy->radio_ver == 0x2050 && phy->radio_rev == 8) {
		FUNC2(dev, 0x047A, 0xFF0F, 0x0010);
		FUNC3(dev, 0x005D, 0x8000);
		FUNC2(dev, 0x004E, 0xFFC0, 0x0010);
		FUNC4(dev, 0x002E, 0xC07F);
		FUNC3(dev, 0x0036, 0x0400);
	} else {
		FUNC3(dev, 0x0036, 0x0200);
		FUNC3(dev, 0x0036, 0x0400);
		FUNC1(dev, 0x005D, 0x7FFF);
		FUNC1(dev, 0x004F, 0xFFFE);
		FUNC2(dev, 0x004E, 0xFFC0, 0x0010);
		FUNC4(dev, 0x002E, 0xC07F);
		FUNC2(dev, 0x047A, 0xFF0F, 0x0010);
	}
}