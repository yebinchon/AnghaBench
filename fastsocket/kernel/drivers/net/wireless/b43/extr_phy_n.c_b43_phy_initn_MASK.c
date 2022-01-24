#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct ssb_sprom {int boardflags_lo; int boardflags2_lo; } ;
struct nphy_txgains {int dummy; } ;
struct b43_phy {int rev; struct b43_phy_n* n; } ;
struct b43_wldev {int /*<<< orphan*/  wl; TYPE_10__* dev; struct b43_phy phy; } ;
struct TYPE_15__ {int /*<<< orphan*/  center_freq; } ;
struct TYPE_14__ {int /*<<< orphan*/  center_freq; } ;
struct TYPE_13__ {int /*<<< orphan*/  center_freq; } ;
struct TYPE_12__ {int /*<<< orphan*/  center_freq; } ;
struct b43_phy_n {int crsminpwr_adjusted; int noisevars_adjusted; int* papd_epsilon_offset; int txpwrctrl; int phyrxchain; scalar_t__ mphase_cal_phase_id; int measure_hold; int antsel_type; int perical; TYPE_5__* txpwrindex; int /*<<< orphan*/ * cal_orig_pwr_idx; scalar_t__ mute; TYPE_4__ iqcal_chanspec_5G; TYPE_3__ iqcal_chanspec_2G; TYPE_2__ rssical_chanspec_5G; TYPE_1__ rssical_chanspec_2G; int /*<<< orphan*/  preamble_override; scalar_t__ deaf_count; } ;
typedef  enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
struct TYPE_20__ {TYPE_8__* bus; } ;
struct TYPE_19__ {int /*<<< orphan*/  chipco; } ;
struct TYPE_18__ {TYPE_6__* bus; } ;
struct TYPE_17__ {int /*<<< orphan*/  drv_cc; } ;
struct TYPE_16__ {int /*<<< orphan*/  index_internal; } ;
struct TYPE_11__ {int bus_type; scalar_t__ board_vendor; scalar_t__ board_type; TYPE_9__* sdev; TYPE_7__* bdev; struct ssb_sprom* bus_sprom; } ;

/* Variables and functions */
 int B43_BFL2_SKWRKFEM_BRD ; 
 int B43_BFL_EXTLNA ; 
#define  B43_BUS_BCMA 129 
#define  B43_BUS_SSB 128 
 int /*<<< orphan*/  B43_NPHY_AFECTL_OVER ; 
 int /*<<< orphan*/  B43_NPHY_AFECTL_OVER1 ; 
 int /*<<< orphan*/  B43_NPHY_AFESEQ_TX2RX_PUD_20M ; 
 int /*<<< orphan*/  B43_NPHY_AFESEQ_TX2RX_PUD_40M ; 
 int /*<<< orphan*/  B43_NPHY_BBCFG ; 
 int B43_NPHY_BBCFG_RSTCCA ; 
 int /*<<< orphan*/  B43_NPHY_BPHY_CTL3 ; 
 int B43_NPHY_BPHY_CTL3_SCALE ; 
 int B43_NPHY_BPHY_CTL3_SCALE_SHIFT ; 
 int /*<<< orphan*/  B43_NPHY_DUP40_BL ; 
 int /*<<< orphan*/  B43_NPHY_DUP40_GFBL ; 
 int /*<<< orphan*/  B43_NPHY_EPS_TABLE_ADJ0 ; 
 int /*<<< orphan*/  B43_NPHY_EPS_TABLE_ADJ1 ; 
 int /*<<< orphan*/  B43_NPHY_MIMO_CRSTXEXT ; 
 int /*<<< orphan*/  B43_NPHY_PAPD_EN0 ; 
 int /*<<< orphan*/  B43_NPHY_PAPD_EN1 ; 
 int /*<<< orphan*/  B43_NPHY_PLOAD_CSENSE_EXTLEN ; 
 int /*<<< orphan*/  B43_NPHY_RFCTL_INTC1 ; 
 int /*<<< orphan*/  B43_NPHY_RFCTL_INTC2 ; 
 int /*<<< orphan*/  B43_NPHY_RFCTL_INTC3 ; 
 int /*<<< orphan*/  B43_NPHY_RFCTL_INTC4 ; 
 int /*<<< orphan*/  B43_NPHY_RFCTL_OVER ; 
 int /*<<< orphan*/  B43_NPHY_RFSEQMODE ; 
 int B43_NPHY_RFSEQMODE_CAOVER ; 
 int B43_NPHY_RFSEQMODE_TROVER ; 
 int /*<<< orphan*/  B43_NPHY_TXF_40CO_B1S0 ; 
 int /*<<< orphan*/  B43_NPHY_TXF_40CO_B1S1 ; 
 int /*<<< orphan*/  B43_NPHY_TXF_40CO_B32S1 ; 
 int /*<<< orphan*/  B43_NPHY_TXMACDELAY ; 
 int /*<<< orphan*/  B43_NPHY_TXMACIF_HOLDOFF ; 
 int /*<<< orphan*/  B43_NPHY_TXREALFD ; 
 int /*<<< orphan*/  B43_NPHY_TXRIFS_FRDEL ; 
 int /*<<< orphan*/  B43_RFSEQ_RESET2RX ; 
 int /*<<< orphan*/  B43_RFSEQ_RX2TX ; 
 scalar_t__ BCMA_BOARD_TYPE_BCM943224M93 ; 
 int /*<<< orphan*/  BCMA_CC_CHIPCTL ; 
 scalar_t__ IEEE80211_BAND_2GHZ ; 
 scalar_t__ PCI_VENDOR_ID_APPLE ; 
 int /*<<< orphan*/  SSB_CHIPCO_CHIPCTL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 scalar_t__ FUNC3 (struct b43_wldev*,struct nphy_txgains,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,struct nphy_txgains,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 struct nphy_txgains FUNC8 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC9 (struct b43_wldev*) ; 
 scalar_t__ FUNC10 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC11 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct b43_wldev*,int*) ; 
 int /*<<< orphan*/  FUNC13 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC14 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC15 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC16 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC17 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC19 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC21 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC22 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC23 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC24 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC25 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC27 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC28 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC30 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC31 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC32 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC33 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC34 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC36 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC39(struct b43_wldev *dev)
{
	struct ssb_sprom *sprom = dev->dev->bus_sprom;
	struct b43_phy *phy = &dev->phy;
	struct b43_phy_n *nphy = phy->n;
	u8 tx_pwr_state;
	struct nphy_txgains target;
	u16 tmp;
	enum ieee80211_band tmp2;
	bool do_rssi_cal;

	u16 clip[2];
	bool do_cal = false;

	if ((dev->phy.rev >= 3) &&
	   (sprom->boardflags_lo & B43_BFL_EXTLNA) &&
	   (FUNC0(dev->wl) == IEEE80211_BAND_2GHZ)) {
		switch (dev->dev->bus_type) {
#ifdef CONFIG_B43_BCMA
		case B43_BUS_BCMA:
			bcma_cc_set32(&dev->dev->bdev->bus->drv_cc,
				      BCMA_CC_CHIPCTL, 0x40);
			break;
#endif
#ifdef CONFIG_B43_SSB
		case B43_BUS_SSB:
			chipco_set32(&dev->dev->sdev->bus->chipco,
				     SSB_CHIPCO_CHIPCTL, 0x40);
			break;
#endif
		}
	}
	nphy->deaf_count = 0;
	FUNC20(dev);
	nphy->crsminpwr_adjusted = false;
	nphy->noisevars_adjusted = false;

	/* Clear all overrides */
	if (dev->phy.rev >= 3) {
		FUNC36(dev, B43_NPHY_TXF_40CO_B1S1, 0);
		FUNC36(dev, B43_NPHY_RFCTL_OVER, 0);
		FUNC36(dev, B43_NPHY_TXF_40CO_B1S0, 0);
		FUNC36(dev, B43_NPHY_TXF_40CO_B32S1, 0);
	} else {
		FUNC36(dev, B43_NPHY_RFCTL_OVER, 0);
	}
	FUNC36(dev, B43_NPHY_RFCTL_INTC1, 0);
	FUNC36(dev, B43_NPHY_RFCTL_INTC2, 0);
	if (dev->phy.rev < 6) {
		FUNC36(dev, B43_NPHY_RFCTL_INTC3, 0);
		FUNC36(dev, B43_NPHY_RFCTL_INTC4, 0);
	}
	FUNC32(dev, B43_NPHY_RFSEQMODE,
		     ~(B43_NPHY_RFSEQMODE_CAOVER |
		       B43_NPHY_RFSEQMODE_TROVER));
	if (dev->phy.rev >= 3)
		FUNC36(dev, B43_NPHY_AFECTL_OVER1, 0);
	FUNC36(dev, B43_NPHY_AFECTL_OVER, 0);

	if (dev->phy.rev <= 2) {
		tmp = (dev->phy.rev == 2) ? 0x3B : 0x40;
		FUNC33(dev, B43_NPHY_BPHY_CTL3,
				~B43_NPHY_BPHY_CTL3_SCALE,
				tmp << B43_NPHY_BPHY_CTL3_SCALE_SHIFT);
	}
	FUNC36(dev, B43_NPHY_AFESEQ_TX2RX_PUD_20M, 0x20);
	FUNC36(dev, B43_NPHY_AFESEQ_TX2RX_PUD_40M, 0x20);

	if (sprom->boardflags2_lo & B43_BFL2_SKWRKFEM_BRD ||
	    (dev->dev->board_vendor == PCI_VENDOR_ID_APPLE &&
	     dev->dev->board_type == BCMA_BOARD_TYPE_BCM943224M93))
		FUNC36(dev, B43_NPHY_TXREALFD, 0xA0);
	else
		FUNC36(dev, B43_NPHY_TXREALFD, 0xB8);
	FUNC36(dev, B43_NPHY_MIMO_CRSTXEXT, 0xC8);
	FUNC36(dev, B43_NPHY_PLOAD_CSENSE_EXTLEN, 0x50);
	FUNC36(dev, B43_NPHY_TXRIFS_FRDEL, 0x30);

	FUNC28(dev, nphy->preamble_override);
	FUNC29(dev);

	if (phy->rev < 2) {
		FUNC36(dev, B43_NPHY_DUP40_GFBL, 0xAA8);
		FUNC36(dev, B43_NPHY_DUP40_BL, 0x9A4);
	}

	tmp2 = FUNC0(dev->wl);
	if (FUNC10(dev)) {
		FUNC35(dev, B43_NPHY_PAPD_EN0, 0x1);
		FUNC33(dev, B43_NPHY_EPS_TABLE_ADJ0, 0x007F,
				nphy->papd_epsilon_offset[0] << 7);
		FUNC35(dev, B43_NPHY_PAPD_EN1, 0x1);
		FUNC33(dev, B43_NPHY_EPS_TABLE_ADJ1, 0x007F,
				nphy->papd_epsilon_offset[1] << 7);
		FUNC9(dev);
	} else if (phy->rev >= 5) {
		FUNC6(dev);
	}

	FUNC30(dev);

	/* Reset CCA, in init code it differs a little from standard way */
	FUNC31(dev, 1);
	tmp = FUNC34(dev, B43_NPHY_BBCFG);
	FUNC36(dev, B43_NPHY_BBCFG, tmp | B43_NPHY_BBCFG_RSTCCA);
	FUNC36(dev, B43_NPHY_BBCFG, tmp & ~B43_NPHY_BBCFG_RSTCCA);
	FUNC31(dev, 0);

	FUNC1(dev, true);

	FUNC11(dev, false);
	FUNC7(dev, B43_RFSEQ_RX2TX);
	FUNC7(dev, B43_RFSEQ_RESET2RX);
	FUNC11(dev, true);

	FUNC5(dev, 0, 0);
	FUNC12(dev, clip);
	if (FUNC0(dev->wl) == IEEE80211_BAND_2GHZ)
		FUNC2(dev);

	tx_pwr_state = nphy->txpwrctrl;
	FUNC25(dev, false);
	FUNC26(dev);
	FUNC23(dev);
	FUNC24(dev);
	FUNC21(dev);

	if (nphy->phyrxchain != 3)
		FUNC17(dev, nphy->phyrxchain);
	if (nphy->mphase_cal_phase_id > 0)
		;/* TODO PHY Periodic Calibration Multi-Phase Restart */

	do_rssi_cal = false;
	if (phy->rev >= 3) {
		if (FUNC0(dev->wl) == IEEE80211_BAND_2GHZ)
			do_rssi_cal = !nphy->rssical_chanspec_2G.center_freq;
		else
			do_rssi_cal = !nphy->rssical_chanspec_5G.center_freq;

		if (do_rssi_cal)
			FUNC15(dev);
		else
			FUNC14(dev);
	} else {
		FUNC15(dev);
	}

	if (!((nphy->measure_hold & 0x6) != 0)) {
		if (FUNC0(dev->wl) == IEEE80211_BAND_2GHZ)
			do_cal = !nphy->iqcal_chanspec_2G.center_freq;
		else
			do_cal = !nphy->iqcal_chanspec_5G.center_freq;

		if (nphy->mute)
			do_cal = false;

		if (do_cal) {
			target = FUNC8(dev);

			if (nphy->antsel_type == 2)
				FUNC19(dev, true);
			if (nphy->perical != 2) {
				FUNC15(dev);
				if (phy->rev >= 3) {
					nphy->cal_orig_pwr_idx[0] =
					    nphy->txpwrindex[0].index_internal;
					nphy->cal_orig_pwr_idx[1] =
					    nphy->txpwrindex[1].index_internal;
					/* TODO N PHY Pre Calibrate TX Gain */
					target = FUNC8(dev);
				}
				if (!FUNC4(dev, target, true, false))
					if (FUNC3(dev, target, 2, 0) == 0)
						FUNC16(dev);
			} else if (nphy->mphase_cal_phase_id == 0)
				;/* N PHY Periodic Calibration with arg 3 */
		} else {
			FUNC13(dev);
		}
	}

	FUNC27(dev);
	FUNC25(dev, tx_pwr_state);
	FUNC36(dev, B43_NPHY_TXMACIF_HOLDOFF, 0x0015);
	FUNC36(dev, B43_NPHY_TXMACDELAY, 0x0320);
	if (phy->rev >= 3 && phy->rev <= 6)
		FUNC36(dev, B43_NPHY_PLOAD_CSENSE_EXTLEN, 0x0014);
	FUNC22(dev);
	if (phy->rev >= 3)
		FUNC18(dev);

	return 0;
}