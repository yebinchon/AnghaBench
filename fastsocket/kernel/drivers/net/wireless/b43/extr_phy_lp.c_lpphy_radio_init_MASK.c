#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int radio_ver; } ;
struct b43_wldev {TYPE_2__* dev; TYPE_1__ phy; } ;
struct TYPE_4__ {int chip_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_LPPHY_FOURWIRE_CTL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct b43_wldev *dev)
{
	/* The radio is attached through the 4wire bus. */
	FUNC2(dev, B43_LPPHY_FOURWIRE_CTL, 0x2);
	FUNC7(1);
	FUNC1(dev, B43_LPPHY_FOURWIRE_CTL, 0xFFFD);
	FUNC7(1);

	if (dev->phy.radio_ver == 0x2062) {
		FUNC4(dev);
	} else {
		FUNC5(dev);
		FUNC6(dev);
		FUNC3(dev, FUNC0(0xF0), 0x5F80);
		FUNC3(dev, FUNC0(0xF1), 0);
		if (dev->dev->chip_id == 0x4325) {
			// TODO SSB PMU recalibration
		}
	}
}