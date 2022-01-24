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
struct b43legacy_phy {int type; int /*<<< orphan*/  rev; } ;
struct b43legacy_wldev {int /*<<< orphan*/  wl; struct b43legacy_phy phy; } ;

/* Variables and functions */
#define  B43legacy_PHYTYPE_B 129 
#define  B43legacy_PHYTYPE_G 128 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

int FUNC6(struct b43legacy_wldev *dev)
{
	struct b43legacy_phy *phy = &dev->phy;
	int err = -ENODEV;

	switch (phy->type) {
	case B43legacy_PHYTYPE_B:
		switch (phy->rev) {
		case 2:
			FUNC0(dev);
			err = 0;
			break;
		case 4:
			FUNC1(dev);
			err = 0;
			break;
		case 5:
			FUNC2(dev);
			err = 0;
			break;
		case 6:
			FUNC3(dev);
			err = 0;
			break;
		}
		break;
	case B43legacy_PHYTYPE_G:
		FUNC4(dev);
		err = 0;
		break;
	}
	if (err)
		FUNC5(dev->wl, "Unknown PHYTYPE found\n");

	return err;
}