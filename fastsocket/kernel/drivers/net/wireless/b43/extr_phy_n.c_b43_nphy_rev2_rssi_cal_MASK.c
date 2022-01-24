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
struct b43_wldev {int /*<<< orphan*/  wl; } ;
typedef  scalar_t__ s32 ;
typedef  enum n_rssi_type { ____Placeholder_n_rssi_type } n_rssi_type ;

/* Variables and functions */
 int /*<<< orphan*/  B2055_C1_PD_RSSIMISC ; 
 int /*<<< orphan*/  B2055_C1_PD_RXTX ; 
 int /*<<< orphan*/  B2055_C1_SP_RSSI ; 
 int /*<<< orphan*/  B2055_C2_PD_RSSIMISC ; 
 int /*<<< orphan*/  B2055_C2_PD_RXTX ; 
 int /*<<< orphan*/  B2055_C2_SP_RSSI ; 
 int /*<<< orphan*/  B43_NPHY_RFCTL_INTC1 ; 
 int /*<<< orphan*/  B43_NPHY_RFCTL_INTC2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ IEEE80211_BAND_5GHZ ; 
 int N_RAIL_I ; 
 int N_RAIL_Q ; 
 int N_RSSI_NB ; 
 int N_RSSI_W1 ; 
 int N_RSSI_W2 ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*,int /*<<< orphan*/ ,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct b43_wldev*,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct b43_wldev*,int*) ; 
 int FUNC11 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC15 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC17 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC18(struct b43_wldev *dev, enum n_rssi_type type)
{
	int i, j, vcm;
	u8 state[4];
	u8 code, val;
	u16 class, override;
	u8 regs_save_radio[2];
	u16 regs_save_phy[2];

	s32 offset[4];
	u8 core;
	u8 rail;

	u16 clip_state[2];
	u16 clip_off[2] = { 0xFFFF, 0xFFFF };
	s32 results_min[4] = { };
	u8 vcm_final[4] = { };
	s32 results[4][4] = { };
	s32 miniq[4][2] = { };

	if (type == N_RSSI_NB) {
		code = 0;
		val = 6;
	} else if (type == N_RSSI_W1 || type == N_RSSI_W2) {
		code = 25;
		val = 4;
	} else {
		FUNC0(1);
		return;
	}

	class = FUNC3(dev, 0, 0);
	FUNC3(dev, 7, 4);
	FUNC5(dev, clip_state);
	FUNC10(dev, clip_off);

	if (FUNC2(dev->wl) == IEEE80211_BAND_5GHZ)
		override = 0x140;
	else
		override = 0x110;

	regs_save_phy[0] = FUNC11(dev, B43_NPHY_RFCTL_INTC1);
	regs_save_radio[0] = FUNC15(dev, B2055_C1_PD_RXTX);
	FUNC12(dev, B43_NPHY_RFCTL_INTC1, override);
	FUNC16(dev, B2055_C1_PD_RXTX, val);

	regs_save_phy[1] = FUNC11(dev, B43_NPHY_RFCTL_INTC2);
	regs_save_radio[1] = FUNC15(dev, B2055_C2_PD_RXTX);
	FUNC12(dev, B43_NPHY_RFCTL_INTC2, override);
	FUNC16(dev, B2055_C2_PD_RXTX, val);

	state[0] = FUNC15(dev, B2055_C1_PD_RSSIMISC) & 0x07;
	state[1] = FUNC15(dev, B2055_C2_PD_RSSIMISC) & 0x07;
	FUNC13(dev, B2055_C1_PD_RSSIMISC, 0xF8);
	FUNC13(dev, B2055_C2_PD_RSSIMISC, 0xF8);
	state[2] = FUNC15(dev, B2055_C1_SP_RSSI) & 0x07;
	state[3] = FUNC15(dev, B2055_C2_SP_RSSI) & 0x07;

	FUNC7(dev, 5, type);
	FUNC8(dev, 0, 0, 5, N_RAIL_I, type);
	FUNC8(dev, 0, 0, 5, N_RAIL_Q, type);

	for (vcm = 0; vcm < 4; vcm++) {
		u8 tmp[4];
		for (j = 0; j < 4; j++)
			tmp[j] = vcm;
		if (type != N_RSSI_W2)
			FUNC9(dev, type, tmp);
		FUNC4(dev, type, results[vcm], 8);
		if (type == N_RSSI_W1 || type == N_RSSI_W2)
			for (j = 0; j < 2; j++)
				miniq[vcm][j] = FUNC17(results[vcm][2 * j],
						    results[vcm][2 * j + 1]);
	}

	for (i = 0; i < 4; i++) {
		s32 mind = 0x100000;
		u8 minvcm = 0;
		s32 minpoll = 249;
		s32 currd;
		for (vcm = 0; vcm < 4; vcm++) {
			if (type == N_RSSI_NB)
				currd = FUNC1(results[vcm][i] - code * 8);
			else
				currd = FUNC1(miniq[vcm][i / 2] - code * 8);

			if (currd < mind) {
				mind = currd;
				minvcm = vcm;
			}

			if (results[vcm][i] < minpoll)
				minpoll = results[vcm][i];
		}
		results_min[i] = minpoll;
		vcm_final[i] = minvcm;
	}

	if (type != N_RSSI_W2)
		FUNC9(dev, type, vcm_final);

	for (i = 0; i < 4; i++) {
		offset[i] = (code * 8) - results[vcm_final[i]][i];

		if (offset[i] < 0)
			offset[i] = -((FUNC1(offset[i]) + 4) / 8);
		else
			offset[i] = (offset[i] + 4) / 8;

		if (results_min[i] == 248)
			offset[i] = code - 32;

		core = (i / 2) ? 2 : 1;
		rail = (i % 2) ? N_RAIL_Q : N_RAIL_I;

		FUNC8(dev, 0, offset[i], core, rail,
						type);
	}

	FUNC14(dev, B2055_C1_PD_RSSIMISC, 0xF8, state[0]);
	FUNC14(dev, B2055_C2_PD_RSSIMISC, 0xF8, state[1]);

	switch (state[2]) {
	case 1:
		FUNC7(dev, 1, N_RSSI_NB);
		break;
	case 4:
		FUNC7(dev, 1, N_RSSI_W1);
		break;
	case 2:
		FUNC7(dev, 1, N_RSSI_W2);
		break;
	default:
		FUNC7(dev, 1, N_RSSI_W2);
		break;
	}

	switch (state[3]) {
	case 1:
		FUNC7(dev, 2, N_RSSI_NB);
		break;
	case 4:
		FUNC7(dev, 2, N_RSSI_W1);
		break;
	default:
		FUNC7(dev, 2, N_RSSI_W2);
		break;
	}

	FUNC7(dev, 0, type);

	FUNC12(dev, B43_NPHY_RFCTL_INTC1, regs_save_phy[0]);
	FUNC16(dev, B2055_C1_PD_RXTX, regs_save_radio[0]);
	FUNC12(dev, B43_NPHY_RFCTL_INTC2, regs_save_phy[1]);
	FUNC16(dev, B2055_C2_PD_RXTX, regs_save_radio[1]);

	FUNC3(dev, 7, class);
	FUNC10(dev, clip_state);
	/* Specs don't say about reset here, but it makes wl and b43 dumps
	   identical, it really seems wl performs this */
	FUNC6(dev);
}