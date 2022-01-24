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
struct TYPE_4__ {TYPE_1__* n; } ;
struct b43_wldev {TYPE_2__ phy; } ;
struct TYPE_3__ {int init_por; } ;

/* Variables and functions */
 int /*<<< orphan*/  R2057_RFPLL_MASTER ; 
 int /*<<< orphan*/  R2057_RFPLL_MISC_CAL_RESETN ; 
 int /*<<< orphan*/  R2057_XTALPUOVR_PINCTRL ; 
 int /*<<< orphan*/  R2057_XTAL_CONFIG2 ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct b43_wldev *dev)
{
	FUNC3(dev, R2057_XTALPUOVR_PINCTRL, 0x1);

	FUNC3(dev, R2057_RFPLL_MISC_CAL_RESETN, 0x78);
	FUNC3(dev, R2057_XTAL_CONFIG2, 0x80);
	FUNC4(2);
	FUNC2(dev, R2057_RFPLL_MISC_CAL_RESETN, ~0x78);
	FUNC2(dev, R2057_XTAL_CONFIG2, ~0x80);

	if (dev->phy.n->init_por) {
		FUNC0(dev);
		FUNC1(dev);
	}
	FUNC2(dev, R2057_RFPLL_MASTER, ~0x8);

	dev->phy.n->init_por = false;
}