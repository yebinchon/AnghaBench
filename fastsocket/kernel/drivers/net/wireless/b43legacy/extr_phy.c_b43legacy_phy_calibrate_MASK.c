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
struct b43legacy_phy {int calibrated; scalar_t__ type; int rev; } ;
struct b43legacy_wldev {struct b43legacy_phy phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43legacy_MMIO_MACCTL ; 
 scalar_t__ B43legacy_PHYTYPE_G ; 
 int /*<<< orphan*/  B43legacy_TMSLOW_GMODE ; 
 int /*<<< orphan*/  FUNC0 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 

void FUNC3(struct b43legacy_wldev *dev)
{
	struct b43legacy_phy *phy = &dev->phy;

	FUNC1(dev, B43legacy_MMIO_MACCTL); /* Dummy read. */
	if (phy->calibrated)
		return;
	if (phy->type == B43legacy_PHYTYPE_G && phy->rev == 1) {
		FUNC2(dev, 0);
		FUNC0(dev);
		FUNC2(dev, B43legacy_TMSLOW_GMODE);
	}
	phy->calibrated = 1;
}