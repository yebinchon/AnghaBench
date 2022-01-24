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
typedef  int u32 ;
typedef  int u16 ;
struct b43_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_LPPHY_RF_OVERRIDE_2_VAL ; 
 int /*<<< orphan*/  B43_LPPHY_RF_OVERRIDE_VAL_0 ; 
 int /*<<< orphan*/  B43_LPPHY_RX_GAIN_CTL_OVERRIDE_VAL ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct b43_wldev *dev, u32 gain)
{
	u16 trsw = gain & 0x1;
	u16 lna = (gain & 0xFFFC) | ((gain & 0xC) >> 2);
	u16 ext_lna = (gain & 2) >> 1;

	FUNC0(dev, B43_LPPHY_RF_OVERRIDE_VAL_0, 0xFFFE, trsw);
	FUNC0(dev, B43_LPPHY_RF_OVERRIDE_2_VAL,
			0xFBFF, ext_lna << 10);
	FUNC0(dev, B43_LPPHY_RF_OVERRIDE_2_VAL,
			0xF7FF, ext_lna << 11);
	FUNC1(dev, B43_LPPHY_RX_GAIN_CTL_OVERRIDE_VAL, lna);
}