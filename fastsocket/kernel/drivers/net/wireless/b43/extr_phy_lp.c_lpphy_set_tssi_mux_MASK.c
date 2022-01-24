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
struct b43_wldev {int dummy; } ;
typedef  enum tssi_mux_mode { ____Placeholder_tssi_mux_mode } tssi_mux_mode ;

/* Variables and functions */
 int /*<<< orphan*/  B2063_PA_CTL10 ; 
 int /*<<< orphan*/  B2063_PA_SP1 ; 
 int /*<<< orphan*/  B43_LPPHY_AFE_CTL_OVRVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int TSSI_MUX_EXT ; 
 int TSSI_MUX_POSTPA ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct b43_wldev *dev, enum tssi_mux_mode mode)
{
	if (mode != TSSI_MUX_EXT) {
		FUNC7(dev, B2063_PA_SP1, 0x2);
		FUNC4(dev, FUNC0(0xF3), 0x1000);
		FUNC8(dev, B2063_PA_CTL10, 0x51);
		if (mode == TSSI_MUX_POSTPA) {
			FUNC5(dev, B2063_PA_SP1, 0xFFFE);
			FUNC2(dev, B43_LPPHY_AFE_CTL_OVRVAL, 0xFFC7);
		} else {
			FUNC6(dev, B2063_PA_SP1, 0xFFFE, 0x1);
			FUNC3(dev, B43_LPPHY_AFE_CTL_OVRVAL,
					0xFFC7, 0x20);
		}
	} else {
		FUNC1(1);
	}
}