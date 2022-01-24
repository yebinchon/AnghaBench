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
struct b43_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_OFDMTAB_AGC1 ; 
 int /*<<< orphan*/  B43_OFDMTAB_AGC1_R1 ; 
 int /*<<< orphan*/  B43_PHY_CRS0 ; 
 int B43_PHY_CRS0_EN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B43_PHY_OFDM61 ; 
 int /*<<< orphan*/  B43_PHY_OTABLEQ ; 
 int /*<<< orphan*/  B43_PHY_PWRDOWN ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct b43_wldev*) ; 

__attribute__((used)) static void FUNC12(struct b43_wldev *dev)
{
	u16 b, curr_s, best_s = 0xFFFF;
	int i;

	FUNC2(dev, B43_PHY_CRS0, ~B43_PHY_CRS0_EN);
	FUNC5(dev, FUNC0(0x1B), 0x1000);
	FUNC3(dev, FUNC0(0x82), 0xF0FF, 0x0300);
	FUNC9(dev, 0x0009, 0x0080);
	FUNC8(dev, 0x0012, 0xFFFC, 0x0002);
	FUNC11(dev);
	FUNC6(dev, FUNC0(0xBA), 0x3ED5);
	b = FUNC4(dev, B43_PHY_PWRDOWN);
	FUNC6(dev, B43_PHY_PWRDOWN, (b & 0xFFF8) | 0x0005);
	FUNC9(dev, 0x0004, 0x0004);
	for (i = 0x10; i <= 0x20; i++) {
		FUNC10(dev, 0x0013, i);
		curr_s = FUNC4(dev, B43_PHY_OTABLEQ) & 0x00FF;
		if (!curr_s) {
			best_s = 0x0000;
			break;
		} else if (curr_s >= 0x0080)
			curr_s = 0x0100 - curr_s;
		if (curr_s < best_s)
			best_s = curr_s;
	}
	FUNC6(dev, B43_PHY_PWRDOWN, b);
	FUNC7(dev, 0x0004, 0xFFFB);
	FUNC10(dev, 0x0013, best_s);
	FUNC1(dev, B43_OFDMTAB_AGC1_R1, 0, 0xFFEC);
	FUNC6(dev, FUNC0(0xB7), 0x1E80);
	FUNC6(dev, FUNC0(0xB6), 0x1C00);
	FUNC6(dev, FUNC0(0xB5), 0x0EC0);
	FUNC6(dev, FUNC0(0xB2), 0x00C0);
	FUNC6(dev, FUNC0(0xB9), 0x1FFF);
	FUNC3(dev, FUNC0(0xBB), 0xF000, 0x0053);
	FUNC3(dev, B43_PHY_OFDM61, 0xFE1F, 0x0120);
	FUNC3(dev, FUNC0(0x13), 0x0FFF, 0x3000);
	FUNC3(dev, FUNC0(0x14), 0x0FFF, 0x3000);
	FUNC1(dev, B43_OFDMTAB_AGC1, 6, 0x0017);
	for (i = 0; i < 6; i++)
		FUNC1(dev, B43_OFDMTAB_AGC1, i, 0x000F);
	FUNC1(dev, B43_OFDMTAB_AGC1, 0x0D, 0x000E);
	FUNC1(dev, B43_OFDMTAB_AGC1, 0x0E, 0x0011);
	FUNC1(dev, B43_OFDMTAB_AGC1, 0x0F, 0x0013);
	FUNC6(dev, FUNC0(0x33), 0x5030);
	FUNC5(dev, B43_PHY_CRS0, B43_PHY_CRS0_EN);
}