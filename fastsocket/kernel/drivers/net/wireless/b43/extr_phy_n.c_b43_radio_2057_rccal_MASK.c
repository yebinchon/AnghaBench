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
typedef  int /*<<< orphan*/  u16 ;
struct b43_phy {int radio_rev; } ;
struct b43_wldev {int /*<<< orphan*/  wl; struct b43_phy phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R2057_RCCAL_DONE_OSCCAP ; 
 int R2057_RCCAL_MASTER ; 
 int R2057_RCCAL_START_R1_Q1_P1 ; 
 int R2057_RCCAL_TRC0 ; 
 int R2057_RCCAL_X1 ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static u16 FUNC5(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;
	bool special = (phy->radio_rev == 3 || phy->radio_rev == 4 ||
			phy->radio_rev == 6);
	u16 tmp;

	if (special) {
		FUNC2(dev, R2057_RCCAL_MASTER, 0x61);
		FUNC2(dev, R2057_RCCAL_TRC0, 0xC0);
	} else {
		FUNC2(dev, 0x1AE, 0x61);
		FUNC2(dev, R2057_RCCAL_TRC0, 0xE1);
	}
	FUNC2(dev, R2057_RCCAL_X1, 0x6E);
	FUNC2(dev, R2057_RCCAL_START_R1_Q1_P1, 0x55);
	if (!FUNC1(dev, R2057_RCCAL_DONE_OSCCAP, 1, 1, 500,
				  5000000))
		FUNC3(dev->wl, "Radio 0x2057 rccal timeout\n");
	FUNC2(dev, R2057_RCCAL_START_R1_Q1_P1, 0x15);
	if (special) {
		FUNC2(dev, R2057_RCCAL_MASTER, 0x69);
		FUNC2(dev, R2057_RCCAL_TRC0, 0xB0);
	} else {
		FUNC2(dev, 0x1AE, 0x69);
		FUNC2(dev, R2057_RCCAL_TRC0, 0xD5);
	}
	FUNC2(dev, R2057_RCCAL_X1, 0x6E);
	FUNC2(dev, R2057_RCCAL_START_R1_Q1_P1, 0x55);
	if (!FUNC1(dev, R2057_RCCAL_DONE_OSCCAP, 1, 1, 500,
				  5000000))
		FUNC3(dev->wl, "Radio 0x2057 rccal timeout\n");
	FUNC2(dev, R2057_RCCAL_START_R1_Q1_P1, 0x15);
	if (special) {
		FUNC2(dev, R2057_RCCAL_MASTER, 0x73);
		FUNC2(dev, R2057_RCCAL_X1, 0x28);
		FUNC2(dev, R2057_RCCAL_TRC0, 0xB0);
	} else {
		FUNC2(dev, 0x1AE, 0x73);
		FUNC2(dev, R2057_RCCAL_X1, 0x6E);
		FUNC2(dev, R2057_RCCAL_TRC0, 0x99);
	}
	FUNC2(dev, R2057_RCCAL_START_R1_Q1_P1, 0x55);
	if (!FUNC1(dev, R2057_RCCAL_DONE_OSCCAP, 1, 1, 500,
				  5000000)) {
		FUNC4(dev->wl, "Radio 0x2057 rcal timeout\n");
		return 0;
	}
	tmp = FUNC0(dev, R2057_RCCAL_DONE_OSCCAP);
	FUNC2(dev, R2057_RCCAL_START_R1_Q1_P1, 0x15);
	return tmp;
}