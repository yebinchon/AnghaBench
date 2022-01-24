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
typedef  int u8 ;
typedef  int u16 ;
struct TYPE_2__ {int rev; } ;
struct b43_wldev {int /*<<< orphan*/  wl; TYPE_1__ phy; } ;
typedef  enum n_intc_override { ____Placeholder_n_intc_override } n_intc_override ;

/* Variables and functions */
 int B43_NPHY_RFCTL_CMD ; 
 int B43_NPHY_RFCTL_CMD_RXTX ; 
 int B43_NPHY_RFCTL_CMD_START ; 
 int B43_NPHY_RFCTL_INTC1 ; 
 int B43_NPHY_RFCTL_INTC2 ; 
 int B43_NPHY_RFCTL_OVER ; 
 int B43_NPHY_TXF_40CO_B1S1 ; 
 int /*<<< orphan*/  B43_RFSEQ_RESET2RX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IEEE80211_BAND_5GHZ ; 
#define  N_INTC_OVERRIDE_EXT_LNA_GAIN 132 
#define  N_INTC_OVERRIDE_EXT_LNA_PU 131 
#define  N_INTC_OVERRIDE_OFF 130 
#define  N_INTC_OVERRIDE_PA 129 
#define  N_INTC_OVERRIDE_TRSW 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int,int,int) ; 
 int FUNC5 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct b43_wldev *dev,
					  enum n_intc_override intc_override,
					  u16 value, u8 core)
{
	u8 i, j;
	u16 reg, tmp, val;

	FUNC0(dev->phy.rev < 3);

	for (i = 0; i < 2; i++) {
		if ((core == 1 && i == 1) || (core == 2 && !i))
			continue;

		reg = (i == 0) ?
			B43_NPHY_RFCTL_INTC1 : B43_NPHY_RFCTL_INTC2;
		FUNC6(dev, reg, 0x400);

		switch (intc_override) {
		case N_INTC_OVERRIDE_OFF:
			FUNC7(dev, reg, 0);
			FUNC2(dev, B43_RFSEQ_RESET2RX);
			break;
		case N_INTC_OVERRIDE_TRSW:
			if (!i) {
				FUNC4(dev, B43_NPHY_RFCTL_INTC1,
						0xFC3F, (value << 6));
				FUNC4(dev, B43_NPHY_TXF_40CO_B1S1,
						0xFFFE, 1);
				FUNC6(dev, B43_NPHY_RFCTL_CMD,
						B43_NPHY_RFCTL_CMD_START);
				for (j = 0; j < 100; j++) {
					if (!(FUNC5(dev, B43_NPHY_RFCTL_CMD) & B43_NPHY_RFCTL_CMD_START)) {
						j = 0;
						break;
					}
					FUNC9(10);
				}
				if (j)
					FUNC8(dev->wl,
						"intc override timeout\n");
				FUNC3(dev, B43_NPHY_TXF_40CO_B1S1,
						0xFFFE);
			} else {
				FUNC4(dev, B43_NPHY_RFCTL_INTC2,
						0xFC3F, (value << 6));
				FUNC4(dev, B43_NPHY_RFCTL_OVER,
						0xFFFE, 1);
				FUNC6(dev, B43_NPHY_RFCTL_CMD,
						B43_NPHY_RFCTL_CMD_RXTX);
				for (j = 0; j < 100; j++) {
					if (!(FUNC5(dev, B43_NPHY_RFCTL_CMD) & B43_NPHY_RFCTL_CMD_RXTX)) {
						j = 0;
						break;
					}
					FUNC9(10);
				}
				if (j)
					FUNC8(dev->wl,
						"intc override timeout\n");
				FUNC3(dev, B43_NPHY_RFCTL_OVER,
						0xFFFE);
			}
			break;
		case N_INTC_OVERRIDE_PA:
			if (FUNC1(dev->wl) == IEEE80211_BAND_5GHZ) {
				tmp = 0x0020;
				val = value << 5;
			} else {
				tmp = 0x0010;
				val = value << 4;
			}
			FUNC4(dev, reg, ~tmp, val);
			break;
		case N_INTC_OVERRIDE_EXT_LNA_PU:
			if (FUNC1(dev->wl) == IEEE80211_BAND_5GHZ) {
				tmp = 0x0001;
				val = value;
			} else {
				tmp = 0x0004;
				val = value << 2;
			}
			FUNC4(dev, reg, ~tmp, val);
			break;
		case N_INTC_OVERRIDE_EXT_LNA_GAIN:
			if (FUNC1(dev->wl) == IEEE80211_BAND_5GHZ) {
				tmp = 0x0002;
				val = value << 1;
			} else {
				tmp = 0x0008;
				val = value << 3;
			}
			FUNC4(dev, reg, ~tmp, val);
			break;
		}
	}
}