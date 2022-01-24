#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint ;
typedef  scalar_t__ u16 ;
struct wiphy {int dummy; } ;
struct ssb_sprom {int board_rev; int boardflags_lo; int boardflags_hi; int boardflags2_hi; scalar_t__ boardflags2_lo; int /*<<< orphan*/  revision; } ;
struct shared_phy_params {int unit; size_t corerev; int vid; scalar_t__ did; scalar_t__ boardtype; int boardflags; scalar_t__ boardflags2; scalar_t__ boardrev; int /*<<< orphan*/  sromrev; int /*<<< orphan*/  chippkg; int /*<<< orphan*/  chiprev; scalar_t__ chip; int /*<<< orphan*/ * physhim; int /*<<< orphan*/ * sih; } ;
struct pci_dev {int vendor; scalar_t__ device; } ;
struct brcms_hardware {int unit; int _piomode; int vendorid; scalar_t__ deviceid; size_t corerev; int boardflags; int _nbands; int /*<<< orphan*/ * sih; struct bcma_device* d11core; int /*<<< orphan*/  etheraddr; TYPE_7__* band; int /*<<< orphan*/  machwcap; int /*<<< orphan*/  phy_sh; int /*<<< orphan*/ * xmtfifo_sz; int /*<<< orphan*/  machwcap_backup; scalar_t__ boardflags2; scalar_t__ boardrev; int /*<<< orphan*/  sromrev; int /*<<< orphan*/ * physhim; TYPE_7__** bandstate; struct brcms_c_info* wlc; } ;
struct brcms_c_info {int vendorid; scalar_t__ deviceid; TYPE_5__* band; struct wiphy* wiphy; TYPE_4__* core; int /*<<< orphan*/  wl; TYPE_3__* pub; struct brcms_hardware* hw; } ;
struct TYPE_10__ {size_t rev; } ;
struct bcma_device {int /*<<< orphan*/  core_index; TYPE_2__ id; TYPE_6__* bus; } ;
struct TYPE_15__ {int bandunit; int /*<<< orphan*/  CWmax; int /*<<< orphan*/  CWmin; int /*<<< orphan*/  radiorev; int /*<<< orphan*/  radioid; scalar_t__ phyrev; int /*<<< orphan*/  phytype; int /*<<< orphan*/ * pi; int /*<<< orphan*/  core_flags; void* abgphy_encore; void* bandtype; } ;
struct TYPE_9__ {int vendor; scalar_t__ type; } ;
struct TYPE_14__ {scalar_t__ hosttype; TYPE_1__ boardinfo; struct ssb_sprom sprom; struct pci_dev* host_pci; } ;
struct TYPE_13__ {int bandunit; int /*<<< orphan*/  radiorev; int /*<<< orphan*/  radioid; scalar_t__ phyrev; int /*<<< orphan*/  phytype; int /*<<< orphan*/ * pi; void* abgphy_encore; void* bandtype; } ;
struct TYPE_12__ {int /*<<< orphan*/  coreidx; } ;
struct TYPE_11__ {size_t corerev; int boardflags; int _nbands; scalar_t__ boardflags2; scalar_t__ boardrev; int /*<<< orphan*/  sromrev; int /*<<< orphan*/ * sih; } ;

/* Variables and functions */
 int /*<<< orphan*/  APHY_CWMIN ; 
 size_t FUNC0 (int /*<<< orphan*/ **) ; 
 scalar_t__ BCM43224_CHIP_ID ; 
 scalar_t__ BCM43224_D11N_ID ; 
 scalar_t__ BCM43224_D11N_ID_VEN1 ; 
 scalar_t__ BCM43225_CHIP_ID ; 
 int /*<<< orphan*/  BCMA_CLKMODE_FAST ; 
 scalar_t__ BCMA_HOSTTYPE_PCI ; 
 int BFL_NOPLLDOWN ; 
 int BOARDREV_PROMOTABLE ; 
 int BOARDREV_PROMOTED ; 
 scalar_t__ FUNC1 (TYPE_7__*) ; 
 scalar_t__ FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  BRCMS_PLLREQ_SHARED ; 
 int /*<<< orphan*/  BRCMS_USE_COREFLAGS ; 
 void* BRCM_BAND_2G ; 
 void* BRCM_BAND_5G ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  OFF ; 
 int /*<<< orphan*/  PHY_CWMAX ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 size_t XMTFIFOTBL_STARTREV ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct bcma_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct brcms_c_info*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct brcms_hardware*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct brcms_hardware*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct brcms_hardware*) ; 
 int /*<<< orphan*/  FUNC19 (struct brcms_hardware*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct brcms_hardware*) ; 
 int /*<<< orphan*/  FUNC21 (struct brcms_hardware*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct bcma_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct brcms_hardware*) ; 
 int /*<<< orphan*/  FUNC24 (struct brcms_hardware*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct brcms_hardware*) ; 
 int /*<<< orphan*/  FUNC26 (struct brcms_hardware*,int) ; 
 int /*<<< orphan*/  FUNC27 (struct brcms_hardware*) ; 
 int /*<<< orphan*/  FUNC28 (struct bcma_device*,char*,int,int,scalar_t__) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  machwcap ; 
 int /*<<< orphan*/  FUNC31 (struct wiphy*,char*,int,...) ; 
 int /*<<< orphan*/ * FUNC32 (int /*<<< orphan*/ ,struct bcma_device*,void*,struct wiphy*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 void* FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (struct shared_phy_params*) ; 
 int /*<<< orphan*/ * FUNC38 (struct brcms_hardware*,int /*<<< orphan*/ ,struct brcms_c_info*) ; 
 int /*<<< orphan*/ ** xmtfifo_sz ; 

__attribute__((used)) static int FUNC39(struct brcms_c_info *wlc, struct bcma_device *core,
			  uint unit, bool piomode)
{
	struct brcms_hardware *wlc_hw;
	uint err = 0;
	uint j;
	bool wme = false;
	struct shared_phy_params sha_params;
	struct wiphy *wiphy = wlc->wiphy;
	struct pci_dev *pcidev = core->bus->host_pci;
	struct ssb_sprom *sprom = &core->bus->sprom;

	if (core->bus->hosttype == BCMA_HOSTTYPE_PCI)
		FUNC28(core, "wl%d: vendor 0x%x device 0x%x\n", unit,
			       pcidev->vendor,
			       pcidev->device);
	else
		FUNC28(core, "wl%d: vendor 0x%x device 0x%x\n", unit,
			       core->bus->boardinfo.vendor,
			       core->bus->boardinfo.type);

	wme = true;

	wlc_hw = wlc->hw;
	wlc_hw->wlc = wlc;
	wlc_hw->unit = unit;
	wlc_hw->band = wlc_hw->bandstate[0];
	wlc_hw->_piomode = piomode;

	/* populate struct brcms_hardware with default values  */
	FUNC18(wlc_hw);

	/*
	 * Do the hardware portion of the attach. Also initialize software
	 * state that depends on the particular hardware we are running.
	 */
	wlc_hw->sih = FUNC7(core->bus);
	if (wlc_hw->sih == NULL) {
		FUNC31(wiphy, "wl%d: brcms_b_attach: si_attach failed\n",
			  unit);
		err = 11;
		goto fail;
	}

	/* verify again the device is supported */
	if (!FUNC22(core)) {
		FUNC31(wiphy, "wl%d: brcms_b_attach: Unsupported device\n",
			 unit);
		err = 12;
		goto fail;
	}

	if (core->bus->hosttype == BCMA_HOSTTYPE_PCI) {
		wlc_hw->vendorid = pcidev->vendor;
		wlc_hw->deviceid = pcidev->device;
	} else {
		wlc_hw->vendorid = core->bus->boardinfo.vendor;
		wlc_hw->deviceid = core->bus->boardinfo.type;
	}

	wlc_hw->d11core = core;
	wlc_hw->corerev = core->id.rev;

	/* validate chip, chiprev and corerev */
	if (!FUNC25(wlc_hw)) {
		err = 13;
		goto fail;
	}

	/* initialize power control registers */
	FUNC8(wlc_hw->sih);

	/* request fastclock and force fastclock for the rest of attach
	 * bring the d11 core out of reset.
	 *   For PMU chips, the first wlc_clkctl_clk is no-op since core-clk
	 *   is still false; But it will be called again inside wlc_corereset,
	 *   after d11 is out of reset.
	 */
	FUNC16(wlc_hw, BCMA_CLKMODE_FAST);
	FUNC17(wlc_hw, BRCMS_USE_COREFLAGS);

	if (!FUNC20(wlc_hw)) {
		FUNC31(wiphy, "wl%d: brcms_b_attach: validate_chip_access "
			"failed\n", unit);
		err = 14;
		goto fail;
	}

	/* get the board rev, used just below */
	j = sprom->board_rev;
	/* promote srom boardrev of 0xFF to 1 */
	if (j == BOARDREV_PROMOTABLE)
		j = BOARDREV_PROMOTED;
	wlc_hw->boardrev = (u16) j;
	if (!FUNC27(wlc_hw)) {
		FUNC31(wiphy, "wl%d: brcms_b_attach: Unsupported Broadcom "
			  "board type (0x%x)" " or revision level (0x%x)\n",
			  unit, FUNC9(wlc_hw->sih),
			  wlc_hw->boardrev);
		err = 15;
		goto fail;
	}
	wlc_hw->sromrev = sprom->revision;
	wlc_hw->boardflags = sprom->boardflags_lo + (sprom->boardflags_hi << 16);
	wlc_hw->boardflags2 = sprom->boardflags2_lo + (sprom->boardflags2_hi << 16);

	if (wlc_hw->boardflags & BFL_NOPLLDOWN)
		FUNC19(wlc_hw, true, BRCMS_PLLREQ_SHARED);

	/* check device id(srom, nvram etc.) to set bands */
	if (wlc_hw->deviceid == BCM43224_D11N_ID ||
	    wlc_hw->deviceid == BCM43224_D11N_ID_VEN1 ||
	    wlc_hw->deviceid == BCM43224_CHIP_ID)
		/* Dualband boards */
		wlc_hw->_nbands = 2;
	else
		wlc_hw->_nbands = 1;

	if ((FUNC10(wlc_hw->sih) == BCM43225_CHIP_ID))
		wlc_hw->_nbands = 1;

	/* BMAC_NOTE: remove init of pub values when brcms_c_attach()
	 * unconditionally does the init of these values
	 */
	wlc->vendorid = wlc_hw->vendorid;
	wlc->deviceid = wlc_hw->deviceid;
	wlc->pub->sih = wlc_hw->sih;
	wlc->pub->corerev = wlc_hw->corerev;
	wlc->pub->sromrev = wlc_hw->sromrev;
	wlc->pub->boardrev = wlc_hw->boardrev;
	wlc->pub->boardflags = wlc_hw->boardflags;
	wlc->pub->boardflags2 = wlc_hw->boardflags2;
	wlc->pub->_nbands = wlc_hw->_nbands;

	wlc_hw->physhim = FUNC38(wlc_hw, wlc->wl, wlc);

	if (wlc_hw->physhim == NULL) {
		FUNC31(wiphy, "wl%d: brcms_b_attach: wlc_phy_shim_attach "
			"failed\n", unit);
		err = 25;
		goto fail;
	}

	/* pass all the parameters to wlc_phy_shared_attach in one struct */
	sha_params.sih = wlc_hw->sih;
	sha_params.physhim = wlc_hw->physhim;
	sha_params.unit = unit;
	sha_params.corerev = wlc_hw->corerev;
	sha_params.vid = wlc_hw->vendorid;
	sha_params.did = wlc_hw->deviceid;
	sha_params.chip = FUNC10(wlc_hw->sih);
	sha_params.chiprev = FUNC12(wlc_hw->sih);
	sha_params.chippkg = FUNC11(wlc_hw->sih);
	sha_params.sromrev = wlc_hw->sromrev;
	sha_params.boardtype = FUNC9(wlc_hw->sih);
	sha_params.boardrev = wlc_hw->boardrev;
	sha_params.boardflags = wlc_hw->boardflags;
	sha_params.boardflags2 = wlc_hw->boardflags2;

	/* alloc and save pointer to shared phy state area */
	wlc_hw->phy_sh = FUNC37(&sha_params);
	if (!wlc_hw->phy_sh) {
		err = 16;
		goto fail;
	}

	/* initialize software state for each core and band */
	for (j = 0; j < wlc_hw->_nbands; j++) {
		/*
		 * band0 is always 2.4Ghz
		 * band1, if present, is 5Ghz
		 */

		FUNC26(wlc_hw, j);

		wlc_hw->band->bandunit = j;
		wlc_hw->band->bandtype = j ? BRCM_BAND_5G : BRCM_BAND_2G;
		wlc->band->bandunit = j;
		wlc->band->bandtype = j ? BRCM_BAND_5G : BRCM_BAND_2G;
		wlc->core->coreidx = core->core_index;

		wlc_hw->machwcap = FUNC14(core, FUNC3(machwcap));
		wlc_hw->machwcap_backup = wlc_hw->machwcap;

		/* init tx fifo size */
		FUNC6((wlc_hw->corerev - XMTFIFOTBL_STARTREV) < 0 ||
			(wlc_hw->corerev - XMTFIFOTBL_STARTREV) >
				FUNC0(xmtfifo_sz));
		wlc_hw->xmtfifo_sz =
		    xmtfifo_sz[(wlc_hw->corerev - XMTFIFOTBL_STARTREV)];
		FUNC6(!wlc_hw->xmtfifo_sz[0]);

		/* Get a phy for this band */
		wlc_hw->band->pi =
			FUNC32(wlc_hw->phy_sh, core,
				       wlc_hw->band->bandtype,
				       wlc->wiphy);
		if (wlc_hw->band->pi == NULL) {
			FUNC31(wiphy, "wl%d: brcms_b_attach: wlc_phy_"
				  "attach failed\n", unit);
			err = 17;
			goto fail;
		}

		FUNC36(wlc_hw->band->pi, wlc_hw->machwcap);

		FUNC35(wlc_hw->band->pi, &wlc_hw->band->phytype,
				       &wlc_hw->band->phyrev,
				       &wlc_hw->band->radioid,
				       &wlc_hw->band->radiorev);
		wlc_hw->band->abgphy_encore =
		    FUNC34(wlc_hw->band->pi);
		wlc->band->abgphy_encore = FUNC34(wlc_hw->band->pi);
		wlc_hw->band->core_flags =
		    FUNC33(wlc_hw->band->pi);

		/* verify good phy_type & supported phy revision */
		if (FUNC2(wlc_hw->band)) {
			if (FUNC5(wlc_hw->band->phyrev))
				goto good_phy;
			else
				goto bad_phy;
		} else if (FUNC1(wlc_hw->band)) {
			if (FUNC4(wlc_hw->band->phyrev))
				goto good_phy;
			else
				goto bad_phy;
		} else {
 bad_phy:
			FUNC31(wiphy, "wl%d: brcms_b_attach: unsupported "
				  "phy type/rev (%d/%d)\n", unit,
				  wlc_hw->band->phytype, wlc_hw->band->phyrev);
			err = 18;
			goto fail;
		}

 good_phy:
		/*
		 * BMAC_NOTE: wlc->band->pi should not be set below and should
		 * be done in the high level attach. However we can not make
		 * that change until all low level access is changed to
		 * wlc_hw->band->pi. Instead do the wlc->band->pi init below,
		 * keeping wlc_hw->band->pi as well for incremental update of
		 * low level fns, and cut over low only init when all fns
		 * updated.
		 */
		wlc->band->pi = wlc_hw->band->pi;
		wlc->band->phytype = wlc_hw->band->phytype;
		wlc->band->phyrev = wlc_hw->band->phyrev;
		wlc->band->radioid = wlc_hw->band->radioid;
		wlc->band->radiorev = wlc_hw->band->radiorev;

		/* default contention windows size limits */
		wlc_hw->band->CWmin = APHY_CWMIN;
		wlc_hw->band->CWmax = PHY_CWMAX;

		if (!FUNC15(wlc, j, wme)) {
			err = 19;
			goto fail;
		}
	}

	/* disable core to match driver "down" state */
	FUNC23(wlc_hw);

	/* Match driver "down" state */
	FUNC13(wlc_hw->sih);

	/* turn off pll and xtal to match driver "down" state */
	FUNC21(wlc_hw, OFF);

	/* *******************************************************************
	 * The hardware is in the DOWN state at this point. D11 core
	 * or cores are in reset with clocks off, and the board PLLs
	 * are off if possible.
	 *
	 * Beyond this point, wlc->sbclk == false and chip registers
	 * should not be touched.
	 *********************************************************************
	 */

	/* init etheraddr state variables */
	FUNC24(wlc_hw, wlc_hw->etheraddr);

	if (FUNC29(wlc_hw->etheraddr) ||
	    FUNC30(wlc_hw->etheraddr)) {
		FUNC31(wiphy, "wl%d: brcms_b_attach: bad macaddr\n",
			  unit);
		err = 22;
		goto fail;
	}

	FUNC28(wlc_hw->d11core, "deviceid 0x%x nbands %d board 0x%x\n",
		       wlc_hw->deviceid, wlc_hw->_nbands,
		       FUNC9(wlc_hw->sih));

	return err;

 fail:
	FUNC31(wiphy, "wl%d: brcms_b_attach: failed with err %d\n", unit,
		  err);
	return err;
}