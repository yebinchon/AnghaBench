#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct TYPE_8__ {int rev; int /*<<< orphan*/  channel_freq; struct b43_phy_n* n; } ;
struct b43_wldev {TYPE_4__ phy; int /*<<< orphan*/  wl; } ;
struct TYPE_7__ {int /*<<< orphan*/  center_freq; } ;
struct TYPE_6__ {int /*<<< orphan*/  center_freq; } ;
struct TYPE_5__ {int* rssical_radio_regs_2G; int* rssical_phy_regs_2G; int* rssical_radio_regs_5G; int* rssical_phy_regs_5G; } ;
struct b43_phy_n {TYPE_3__ rssical_chanspec_5G; TYPE_2__ rssical_chanspec_2G; TYPE_1__ rssical_cache; } ;
typedef  int s32 ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int B2056_RX0 ; 
 int B2056_RX1 ; 
 int B2056_RX_RSSI_MISC ; 
 int B43_NPHY_AFECTL_C1 ; 
 int B43_NPHY_AFECTL_C2 ; 
 int B43_NPHY_AFECTL_OVER ; 
 int B43_NPHY_AFECTL_OVER1 ; 
 int B43_NPHY_RFCTL_CMD ; 
 int B43_NPHY_RFCTL_CMD_RXTX ; 
 int B43_NPHY_RFCTL_CMD_START ; 
 int B43_NPHY_RFCTL_INTC1 ; 
 int B43_NPHY_RFCTL_INTC2 ; 
 int B43_NPHY_RFCTL_LUT_TRSW_UP1 ; 
 int B43_NPHY_RFCTL_LUT_TRSW_UP2 ; 
 int B43_NPHY_RFCTL_OVER ; 
 int B43_NPHY_RFCTL_RSSIO1 ; 
 int B43_NPHY_RFCTL_RSSIO2 ; 
 int B43_NPHY_RSSIMC_0I_RSSI_X ; 
 int B43_NPHY_RSSIMC_0I_RSSI_Y ; 
 int B43_NPHY_RSSIMC_0I_RSSI_Z ; 
 int B43_NPHY_RSSIMC_0Q_RSSI_X ; 
 int B43_NPHY_RSSIMC_0Q_RSSI_Y ; 
 int B43_NPHY_RSSIMC_0Q_RSSI_Z ; 
 int B43_NPHY_RSSIMC_1I_RSSI_X ; 
 int B43_NPHY_RSSIMC_1I_RSSI_Y ; 
 int B43_NPHY_RSSIMC_1I_RSSI_Z ; 
 int B43_NPHY_RSSIMC_1Q_RSSI_X ; 
 int B43_NPHY_RSSIMC_1Q_RSSI_Y ; 
 int B43_NPHY_RSSIMC_1Q_RSSI_Z ; 
 int B43_NPHY_TXF_40CO_B1S0 ; 
 int B43_NPHY_TXF_40CO_B1S1 ; 
 int B43_NPHY_TXF_40CO_B32S1 ; 
 int /*<<< orphan*/  B43_RFSEQ_RESET2RX ; 
 scalar_t__ IEEE80211_BAND_2GHZ ; 
 scalar_t__ IEEE80211_BAND_5GHZ ; 
 int /*<<< orphan*/  N_INTC_OVERRIDE_OFF ; 
 int /*<<< orphan*/  N_INTC_OVERRIDE_TRSW ; 
 int N_RAIL_I ; 
 int N_RAIL_Q ; 
 int N_RSSI_NB ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct b43_wldev*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct b43_wldev*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct b43_wldev*,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct b43_wldev*,int,int) ; 
 int FUNC13 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct b43_wldev*,int,int,int) ; 
 int FUNC17 (struct b43_wldev*,int) ; 

__attribute__((used)) static void FUNC18(struct b43_wldev *dev)
{
	struct b43_phy_n *nphy = dev->phy.n;

	u16 saved_regs_phy_rfctl[2];
	u16 saved_regs_phy[13];
	u16 regs_to_store[] = {
		B43_NPHY_AFECTL_OVER1, B43_NPHY_AFECTL_OVER,
		B43_NPHY_AFECTL_C1, B43_NPHY_AFECTL_C2,
		B43_NPHY_TXF_40CO_B1S1, B43_NPHY_RFCTL_OVER,
		B43_NPHY_TXF_40CO_B1S0, B43_NPHY_TXF_40CO_B32S1,
		B43_NPHY_RFCTL_CMD,
		B43_NPHY_RFCTL_LUT_TRSW_UP1, B43_NPHY_RFCTL_LUT_TRSW_UP2,
		B43_NPHY_RFCTL_RSSIO1, B43_NPHY_RFCTL_RSSIO2
	};

	u16 class;

	u16 clip_state[2];
	u16 clip_off[2] = { 0xFFFF, 0xFFFF };

	u8 vcm_final = 0;
	s32 offset[4];
	s32 results[8][4] = { };
	s32 results_min[4] = { };
	s32 poll_results[4] = { };

	u16 *rssical_radio_regs = NULL;
	u16 *rssical_phy_regs = NULL;

	u16 r; /* routing */
	u8 rx_core_state;
	int core, i, j, vcm;

	class = FUNC3(dev, 0, 0);
	FUNC3(dev, 7, 4);
	FUNC7(dev, clip_state);
	FUNC11(dev, clip_off);

	saved_regs_phy_rfctl[0] = FUNC13(dev, B43_NPHY_RFCTL_INTC1);
	saved_regs_phy_rfctl[1] = FUNC13(dev, B43_NPHY_RFCTL_INTC2);
	for (i = 0; i < FUNC0(regs_to_store); i++)
		saved_regs_phy[i] = FUNC13(dev, regs_to_store[i]);

	FUNC8(dev, N_INTC_OVERRIDE_OFF, 0, 7);
	FUNC8(dev, N_INTC_OVERRIDE_TRSW, 1, 7);
	FUNC9(dev, 0x1, 0, 0, false);
	FUNC9(dev, 0x2, 1, 0, false);
	FUNC9(dev, 0x80, 1, 0, false);
	FUNC9(dev, 0x40, 1, 0, false);

	if (FUNC2(dev->wl) == IEEE80211_BAND_5GHZ) {
		FUNC9(dev, 0x20, 0, 0, false);
		FUNC9(dev, 0x10, 1, 0, false);
	} else {
		FUNC9(dev, 0x10, 0, 0, false);
		FUNC9(dev, 0x20, 1, 0, false);
	}

	rx_core_state = FUNC5(dev);
	for (core = 0; core < 2; core++) {
		if (!(rx_core_state & (1 << core)))
			continue;
		r = core ? B2056_RX1 : B2056_RX0;
		FUNC10(dev, 0, 0, core + 1, N_RAIL_I,
					   N_RSSI_NB);
		FUNC10(dev, 0, 0, core + 1, N_RAIL_Q,
					   N_RSSI_NB);

		/* Grab RSSI results for every possible VCM */
		for (vcm = 0; vcm < 8; vcm++) {
			FUNC16(dev, r | B2056_RX_RSSI_MISC, 0xE3,
					vcm << 2);
			FUNC6(dev, N_RSSI_NB, results[vcm], 8);
		}

		/* Find out which VCM got the best results */
		for (i = 0; i < 4; i += 2) {
			s32 currd;
			s32 mind = 0x100000;
			s32 minpoll = 249;
			u8 minvcm = 0;
			if (2 * core != i)
				continue;
			for (vcm = 0; vcm < 8; vcm++) {
				currd = results[vcm][i] * results[vcm][i] +
					results[vcm][i + 1] * results[vcm][i];
				if (currd < mind) {
					mind = currd;
					minvcm = vcm;
				}
				if (results[vcm][i] < minpoll)
					minpoll = results[vcm][i];
			}
			vcm_final = minvcm;
			results_min[i] = minpoll;
		}

		/* Select the best VCM */
		FUNC16(dev, r | B2056_RX_RSSI_MISC, 0xE3,
				  vcm_final << 2);

		for (i = 0; i < 4; i++) {
			if (core != i / 2)
				continue;
			offset[i] = -results[vcm_final][i];
			if (offset[i] < 0)
				offset[i] = -((FUNC1(offset[i]) + 4) / 8);
			else
				offset[i] = (offset[i] + 4) / 8;
			if (results_min[i] == 248)
				offset[i] = -32;
			FUNC10(dev, 0, offset[i],
						   (i / 2 == 0) ? 1 : 2,
						   (i % 2 == 0) ? N_RAIL_I : N_RAIL_Q,
						   N_RSSI_NB);
		}
	}

	for (core = 0; core < 2; core++) {
		if (!(rx_core_state & (1 << core)))
			continue;
		for (i = 0; i < 2; i++) {
			FUNC10(dev, 0, 0, core + 1,
						   N_RAIL_I, i);
			FUNC10(dev, 0, 0, core + 1,
						   N_RAIL_Q, i);
			FUNC6(dev, i, poll_results, 8);
			for (j = 0; j < 4; j++) {
				if (j / 2 == core) {
					offset[j] = 232 - poll_results[j];
					if (offset[j] < 0)
						offset[j] = -(FUNC1(offset[j] + 4) / 8);
					else
						offset[j] = (offset[j] + 4) / 8;
					FUNC10(dev, 0,
						offset[2 * core], core + 1, j % 2, i);
				}
			}
		}
	}

	FUNC15(dev, B43_NPHY_RFCTL_INTC1, saved_regs_phy_rfctl[0]);
	FUNC15(dev, B43_NPHY_RFCTL_INTC2, saved_regs_phy_rfctl[1]);

	FUNC4(dev, B43_RFSEQ_RESET2RX);

	FUNC14(dev, B43_NPHY_TXF_40CO_B1S1, 0x1);
	FUNC14(dev, B43_NPHY_RFCTL_CMD, B43_NPHY_RFCTL_CMD_START);
	FUNC12(dev, B43_NPHY_TXF_40CO_B1S1, ~0x1);

	FUNC14(dev, B43_NPHY_RFCTL_OVER, 0x1);
	FUNC14(dev, B43_NPHY_RFCTL_CMD, B43_NPHY_RFCTL_CMD_RXTX);
	FUNC12(dev, B43_NPHY_TXF_40CO_B1S1, ~0x1);

	for (i = 0; i < FUNC0(regs_to_store); i++)
		FUNC15(dev, regs_to_store[i], saved_regs_phy[i]);

	/* Store for future configuration */
	if (FUNC2(dev->wl) == IEEE80211_BAND_2GHZ) {
		rssical_radio_regs = nphy->rssical_cache.rssical_radio_regs_2G;
		rssical_phy_regs = nphy->rssical_cache.rssical_phy_regs_2G;
	} else {
		rssical_radio_regs = nphy->rssical_cache.rssical_radio_regs_5G;
		rssical_phy_regs = nphy->rssical_cache.rssical_phy_regs_5G;
	}
	if (dev->phy.rev >= 7) {
	} else {
		rssical_radio_regs[0] = FUNC17(dev, B2056_RX0 |
						       B2056_RX_RSSI_MISC);
		rssical_radio_regs[1] = FUNC17(dev, B2056_RX1 |
						       B2056_RX_RSSI_MISC);
	}
	rssical_phy_regs[0] = FUNC13(dev, B43_NPHY_RSSIMC_0I_RSSI_Z);
	rssical_phy_regs[1] = FUNC13(dev, B43_NPHY_RSSIMC_0Q_RSSI_Z);
	rssical_phy_regs[2] = FUNC13(dev, B43_NPHY_RSSIMC_1I_RSSI_Z);
	rssical_phy_regs[3] = FUNC13(dev, B43_NPHY_RSSIMC_1Q_RSSI_Z);
	rssical_phy_regs[4] = FUNC13(dev, B43_NPHY_RSSIMC_0I_RSSI_X);
	rssical_phy_regs[5] = FUNC13(dev, B43_NPHY_RSSIMC_0Q_RSSI_X);
	rssical_phy_regs[6] = FUNC13(dev, B43_NPHY_RSSIMC_1I_RSSI_X);
	rssical_phy_regs[7] = FUNC13(dev, B43_NPHY_RSSIMC_1Q_RSSI_X);
	rssical_phy_regs[8] = FUNC13(dev, B43_NPHY_RSSIMC_0I_RSSI_Y);
	rssical_phy_regs[9] = FUNC13(dev, B43_NPHY_RSSIMC_0Q_RSSI_Y);
	rssical_phy_regs[10] = FUNC13(dev, B43_NPHY_RSSIMC_1I_RSSI_Y);
	rssical_phy_regs[11] = FUNC13(dev, B43_NPHY_RSSIMC_1Q_RSSI_Y);

	/* Remember for which channel we store configuration */
	if (FUNC2(dev->wl) == IEEE80211_BAND_2GHZ)
		nphy->rssical_chanspec_2G.center_freq = dev->phy.channel_freq;
	else
		nphy->rssical_chanspec_5G.center_freq = dev->phy.channel_freq;

	/* End of calibration, restore configuration */
	FUNC3(dev, 7, class);
	FUNC11(dev, clip_state);
}