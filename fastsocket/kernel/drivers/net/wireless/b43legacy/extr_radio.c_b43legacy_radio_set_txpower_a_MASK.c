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
struct b43legacy_phy {int txpwr_offset; } ;
struct b43legacy_wldev {struct b43legacy_phy phy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43legacy_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43legacy_wldev*,int,int) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int) ; 

void FUNC7(struct b43legacy_wldev *dev, u16 txpower)
{
	struct b43legacy_phy *phy = &dev->phy;
	u16 pamp;
	u16 base;
	u16 dac;
	u16 ilt;

	txpower = FUNC6(txpower, 0, 63);

	pamp = FUNC2(txpower);
	pamp <<= 5;
	pamp &= 0x00E0;
	FUNC5(dev, 0x0019, pamp);

	base = FUNC0(txpower);
	base &= 0x000F;
	FUNC5(dev, 0x0017, base | 0x0020);

	ilt = FUNC3(dev, 0x3001);
	ilt &= 0x0007;

	dac = FUNC1(txpower);
	dac <<= 3;
	dac |= ilt;

	FUNC4(dev, 0x3001, dac);

	phy->txpwr_offset = txpower;

	/* TODO: FuncPlaceholder (Adjust BB loft cancel) */
}