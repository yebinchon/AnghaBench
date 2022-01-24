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
struct TYPE_2__ {int rev; int /*<<< orphan*/  channel; } ;
struct b43_wldev {TYPE_1__ phy; int /*<<< orphan*/  wl; } ;

/* Variables and functions */
 int B43_MACCTL_ENABLED ; 
 int /*<<< orphan*/  B43_MMIO_MACCTL ; 
 int /*<<< orphan*/  B43_NPHY_RFCTL_CMD ; 
 int /*<<< orphan*/  B43_NPHY_RFCTL_CMD_CHIP0PU ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC9(struct b43_wldev *dev,
					bool blocked)
{
	if (FUNC6(dev, B43_MMIO_MACCTL) & B43_MACCTL_ENABLED)
		FUNC8(dev->wl, "MAC not suspended\n");

	if (blocked) {
		FUNC0(dev, B43_NPHY_RFCTL_CMD,
				~B43_NPHY_RFCTL_CMD_CHIP0PU);
		if (dev->phy.rev >= 7) {
			/* TODO */
		} else if (dev->phy.rev >= 3) {
			FUNC4(dev, 0x09, ~0x2);

			FUNC5(dev, 0x204D, 0);
			FUNC5(dev, 0x2053, 0);
			FUNC5(dev, 0x2058, 0);
			FUNC5(dev, 0x205E, 0);
			FUNC4(dev, 0x2062, ~0xF0);
			FUNC5(dev, 0x2064, 0);

			FUNC5(dev, 0x304D, 0);
			FUNC5(dev, 0x3053, 0);
			FUNC5(dev, 0x3058, 0);
			FUNC5(dev, 0x305E, 0);
			FUNC4(dev, 0x3062, ~0xF0);
			FUNC5(dev, 0x3064, 0);
		}
	} else {
		if (dev->phy.rev >= 7) {
			FUNC1(dev);
			FUNC7(dev, dev->phy.channel);
		} else if (dev->phy.rev >= 3) {
			FUNC3(dev);
			FUNC7(dev, dev->phy.channel);
		} else {
			FUNC2(dev);
		}
	}
}