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
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  is_40mhz; struct b43_phy_n* n; } ;
struct b43_wldev {int /*<<< orphan*/  wl; TYPE_1__ phy; } ;
struct b43_phy_n {int bb_mult_save; scalar_t__ hang_avoid; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_NPHY_IQLOCAL_CMDGCTL ; 
 int /*<<< orphan*/  B43_NPHY_RFSEQMODE ; 
 int B43_NPHY_RFSEQMODE_CAOVER ; 
 int /*<<< orphan*/  B43_NPHY_RFSEQST ; 
 int /*<<< orphan*/  B43_NPHY_SAMP_CMD ; 
 int /*<<< orphan*/  B43_NPHY_SAMP_DEPCNT ; 
 int /*<<< orphan*/  B43_NPHY_SAMP_LOOPCNT ; 
 int /*<<< orphan*/  B43_NPHY_SAMP_WAITCNT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int) ; 
 int FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct b43_wldev *dev, u16 samps, u16 loops,
					u16 wait, bool iqmode, bool dac_test)
{
	struct b43_phy_n *nphy = dev->phy.n;
	int i;
	u16 seq_mode;
	u32 tmp;

	if (nphy->hang_avoid)
		FUNC1(dev, true);

	if ((nphy->bb_mult_save & 0x80000000) == 0) {
		tmp = FUNC2(dev, FUNC0(15, 87));
		nphy->bb_mult_save = (tmp & 0xFFFF) | 0x80000000;
	}

	if (!dev->phy.is_40mhz)
		tmp = 0x6464;
	else
		tmp = 0x4747;
	FUNC3(dev, FUNC0(15, 87), tmp);

	if (nphy->hang_avoid)
		FUNC1(dev, false);

	FUNC7(dev, B43_NPHY_SAMP_DEPCNT, (samps - 1));

	if (loops != 0xFFFF)
		FUNC7(dev, B43_NPHY_SAMP_LOOPCNT, (loops - 1));
	else
		FUNC7(dev, B43_NPHY_SAMP_LOOPCNT, loops);

	FUNC7(dev, B43_NPHY_SAMP_WAITCNT, wait);

	seq_mode = FUNC5(dev, B43_NPHY_RFSEQMODE);

	FUNC6(dev, B43_NPHY_RFSEQMODE, B43_NPHY_RFSEQMODE_CAOVER);
	if (iqmode) {
		FUNC4(dev, B43_NPHY_IQLOCAL_CMDGCTL, 0x7FFF);
		FUNC6(dev, B43_NPHY_IQLOCAL_CMDGCTL, 0x8000);
	} else {
		if (dac_test)
			FUNC7(dev, B43_NPHY_SAMP_CMD, 5);
		else
			FUNC7(dev, B43_NPHY_SAMP_CMD, 1);
	}
	for (i = 0; i < 100; i++) {
		if (!(FUNC5(dev, B43_NPHY_RFSEQST) & 1)) {
			i = 0;
			break;
		}
		FUNC9(10);
	}
	if (i)
		FUNC8(dev->wl, "run samples timeout\n");

	FUNC7(dev, B43_NPHY_RFSEQMODE, seq_mode);
}