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
struct b43_phy {int radio_rev; } ;
struct b43_wldev {int /*<<< orphan*/  wl; struct b43_phy phy; } ;

/* Variables and functions */
 int R2057_BANDGAP_RCAL_TRIM ; 
 int R2057_IPA2G_CASCONV_CORE0 ; 
 int R2057_IQTEST_SEL_PU ; 
 int R2057_RCAL_CONFIG ; 
 int /*<<< orphan*/  R2057_RCAL_STATUS ; 
 int /*<<< orphan*/  R2057_RCCAL_N1_1 ; 
 int R2057_TEMPSENSE_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int,int,int) ; 
 int FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static u8 FUNC8(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;
	u16 tmp;

	if (phy->radio_rev == 5) {
		FUNC0(dev, 0x342, ~0x2);
		FUNC7(10);
		FUNC4(dev, R2057_IQTEST_SEL_PU, 0x1);
		FUNC2(dev, 0x1ca, ~0x2, 0x1);
	}

	FUNC4(dev, R2057_RCAL_CONFIG, 0x1);
	FUNC7(10);
	FUNC4(dev, R2057_RCAL_CONFIG, 0x3);
	if (!FUNC5(dev, R2057_RCCAL_N1_1, 1, 1, 100, 1000000)) {
		FUNC6(dev->wl, "Radio 0x2057 rcal timeout\n");
		return 0;
	}
	FUNC1(dev, R2057_RCAL_CONFIG, ~0x2);
	tmp = FUNC3(dev, R2057_RCAL_STATUS) & 0x3E;
	FUNC1(dev, R2057_RCAL_CONFIG, ~0x1);

	if (phy->radio_rev == 5) {
		FUNC1(dev, R2057_IPA2G_CASCONV_CORE0, ~0x1);
		FUNC1(dev, 0x1ca, ~0x2);
	}
	if (phy->radio_rev <= 4 || phy->radio_rev == 6) {
		FUNC2(dev, R2057_TEMPSENSE_CONFIG, ~0x3C, tmp);
		FUNC2(dev, R2057_BANDGAP_RCAL_TRIM, ~0xF0,
				  tmp << 2);
	}

	return tmp & 0x3e;
}