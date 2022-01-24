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
struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_LPPHY_AFE_DDFS ; 
 int /*<<< orphan*/  B43_LPPHY_RF_OVERRIDE_0 ; 
 int /*<<< orphan*/  B43_LPPHY_RF_OVERRIDE_2 ; 
 int /*<<< orphan*/  B43_LPPHY_RF_OVERRIDE_2_VAL ; 
 int /*<<< orphan*/  B43_LPPHY_RF_OVERRIDE_VAL_0 ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct b43_wldev *dev,
					 bool blocked)
{
	//TODO check MAC control register
	if (blocked) {
		if (dev->phy.rev >= 2) {
			FUNC0(dev, B43_LPPHY_RF_OVERRIDE_VAL_0, 0x83FF);
			FUNC1(dev, B43_LPPHY_RF_OVERRIDE_0, 0x1F00);
			FUNC0(dev, B43_LPPHY_AFE_DDFS, 0x80FF);
			FUNC0(dev, B43_LPPHY_RF_OVERRIDE_2_VAL, 0xDFFF);
			FUNC1(dev, B43_LPPHY_RF_OVERRIDE_2, 0x0808);
		} else {
			FUNC0(dev, B43_LPPHY_RF_OVERRIDE_VAL_0, 0xE0FF);
			FUNC1(dev, B43_LPPHY_RF_OVERRIDE_0, 0x1F00);
			FUNC0(dev, B43_LPPHY_RF_OVERRIDE_2_VAL, 0xFCFF);
			FUNC1(dev, B43_LPPHY_RF_OVERRIDE_2, 0x0018);
		}
	} else {
		FUNC0(dev, B43_LPPHY_RF_OVERRIDE_0, 0xE0FF);
		if (dev->phy.rev >= 2)
			FUNC0(dev, B43_LPPHY_RF_OVERRIDE_2, 0xF7F7);
		else
			FUNC0(dev, B43_LPPHY_RF_OVERRIDE_2, 0xFFE7);
	}
}