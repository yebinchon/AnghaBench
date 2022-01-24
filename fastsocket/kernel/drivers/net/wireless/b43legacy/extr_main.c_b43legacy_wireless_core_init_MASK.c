#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct ssb_sprom {int boardflags_lo; } ;
struct ssb_bus {int /*<<< orphan*/  pcicore; struct ssb_sprom sprom; } ;
struct b43legacy_phy {scalar_t__ type; int rev; int radio_ver; int /*<<< orphan*/ * lo_control; int /*<<< orphan*/ * tssi2dbm; scalar_t__ dyn_tssi_tbl; int /*<<< orphan*/  _lo_pairs; scalar_t__ gmode; } ;
struct b43legacy_wldev {struct b43legacy_wl* wl; TYPE_2__* dev; struct b43legacy_phy phy; } ;
struct b43legacy_wl {int /*<<< orphan*/  hw; } ;
struct b43legacy_lopair {int dummy; } ;
struct TYPE_4__ {int revision; } ;
struct TYPE_5__ {TYPE_1__ id; struct ssb_bus* bus; } ;

/* Variables and functions */
 int B43legacy_BFL_PACTRL ; 
 int /*<<< orphan*/  B43legacy_DEFAULT_LONG_RETRY_LIMIT ; 
 int /*<<< orphan*/  B43legacy_DEFAULT_SHORT_RETRY_LIMIT ; 
 int /*<<< orphan*/  B43legacy_HF_GDCW ; 
 int /*<<< orphan*/  B43legacy_HF_OFDMPABOOST ; 
 int /*<<< orphan*/  B43legacy_HF_SYMW ; 
 int B43legacy_LO_COUNT ; 
 scalar_t__ B43legacy_PHYTYPE_B ; 
 scalar_t__ B43legacy_PHYTYPE_G ; 
 int /*<<< orphan*/  B43legacy_SHM_SHARED ; 
 int B43legacy_SHM_SH_PRMAXTIME ; 
 int B43legacy_SHM_SH_WLCOREREV ; 
 int /*<<< orphan*/  B43legacy_SHM_WIRELESS ; 
 int /*<<< orphan*/  B43legacy_STAT_INITIALIZED ; 
 scalar_t__ B43legacy_STAT_UNINIT ; 
 int /*<<< orphan*/  B43legacy_TMSLOW_GMODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*) ; 
 int FUNC2 (struct b43legacy_wldev*) ; 
 int FUNC3 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC5 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC7 (struct b43legacy_wldev*) ; 
 int FUNC8 (struct b43legacy_wldev*) ; 
 int FUNC9 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC10 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC11 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC12 (struct b43legacy_wl*) ; 
 int /*<<< orphan*/  FUNC13 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC14 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC18 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC19 (struct b43legacy_wldev*) ; 
 scalar_t__ FUNC20 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC21 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC26 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC27 (struct ssb_bus*) ; 
 int FUNC28 (struct ssb_bus*,int) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static int FUNC31(struct b43legacy_wldev *dev)
{
	struct b43legacy_wl *wl = dev->wl;
	struct ssb_bus *bus = dev->dev->bus;
	struct b43legacy_phy *phy = &dev->phy;
	struct ssb_sprom *sprom = &dev->dev->bus->sprom;
	int err;
	u32 hf;
	u32 tmp;

	FUNC0(FUNC18(dev) != B43legacy_STAT_UNINIT);

	err = FUNC28(bus, 0);
	if (err)
		goto out;
	if (!FUNC29(dev->dev)) {
		tmp = phy->gmode ? B43legacy_TMSLOW_GMODE : 0;
		FUNC21(dev, tmp);
	}

	if ((phy->type == B43legacy_PHYTYPE_B) ||
	    (phy->type == B43legacy_PHYTYPE_G)) {
		phy->_lo_pairs = FUNC24(sizeof(struct b43legacy_lopair)
					 * B43legacy_LO_COUNT,
					 GFP_KERNEL);
		if (!phy->_lo_pairs)
			return -ENOMEM;
	}
	FUNC26(dev);

	err = FUNC8(dev);
	if (err)
		goto err_kfree_lo_control;

	/* Enable IRQ routing to this device. */
	FUNC30(&bus->pcicore, dev->dev);

	FUNC25(dev);
	FUNC7(dev);
	err = FUNC2(dev);
	if (err)
		goto err_kfree_tssitbl;
	FUNC17(dev, B43legacy_SHM_SHARED,
			      B43legacy_SHM_SH_WLCOREREV,
			      dev->dev->id.revision);
	hf = FUNC4(dev);
	if (phy->type == B43legacy_PHYTYPE_G) {
		hf |= B43legacy_HF_SYMW;
		if (phy->rev == 1)
			hf |= B43legacy_HF_GDCW;
		if (sprom->boardflags_lo & B43legacy_BFL_PACTRL)
			hf |= B43legacy_HF_OFDMPABOOST;
	} else if (phy->type == B43legacy_PHYTYPE_B) {
		hf |= B43legacy_HF_SYMW;
		if (phy->rev >= 2 && phy->radio_ver == 0x2050)
			hf &= ~B43legacy_HF_GDCW;
	}
	FUNC5(dev, hf);

	FUNC14(dev,
				   B43legacy_DEFAULT_SHORT_RETRY_LIMIT,
				   B43legacy_DEFAULT_LONG_RETRY_LIMIT);

	FUNC17(dev, B43legacy_SHM_SHARED,
			      0x0044, 3);
	FUNC17(dev, B43legacy_SHM_SHARED,
			      0x0046, 2);

	/* Disable sending probe responses from firmware.
	 * Setting the MaxTime to one usec will always trigger
	 * a timeout, so we never send any probe resp.
	 * A timeout of zero is infinite. */
	FUNC17(dev, B43legacy_SHM_SHARED,
			      B43legacy_SHM_SH_PRMAXTIME, 1);

	FUNC11(dev);

	/* Minimum Contention Window */
	if (phy->type == B43legacy_PHYTYPE_B)
		FUNC17(dev, B43legacy_SHM_WIRELESS,
				      0x0003, 31);
	else
		FUNC17(dev, B43legacy_SHM_WIRELESS,
				      0x0003, 15);
	/* Maximum Contention Window */
	FUNC17(dev, B43legacy_SHM_WIRELESS,
			      0x0004, 1023);

	do {
		if (FUNC20(dev))
			err = FUNC9(dev);
		else {
			err = FUNC3(dev);
			if (!err)
				FUNC10(dev);
		}
	} while (err == -EAGAIN);
	if (err)
		goto err_chip_exit;

	FUNC16(dev, 1);

	FUNC28(bus, 1); /* Enable dynamic PCTL */
	FUNC19(dev);
	FUNC13(dev);
	FUNC12(wl);

	FUNC22(dev->wl->hw);
	FUNC15(dev, B43legacy_STAT_INITIALIZED);

	FUNC6(dev);
out:
	return err;

err_chip_exit:
	FUNC1(dev);
err_kfree_tssitbl:
	if (phy->dyn_tssi_tbl)
		FUNC23(phy->tssi2dbm);
err_kfree_lo_control:
	FUNC23(phy->lo_control);
	phy->lo_control = NULL;
	FUNC27(bus);
	FUNC0(FUNC18(dev) != B43legacy_STAT_UNINIT);
	return err;
}