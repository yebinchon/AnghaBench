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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ u_int ;
struct ahd_softc {int bugs; int flags; int features; scalar_t__ channel; int /*<<< orphan*/  dev_softc; } ;
typedef  int /*<<< orphan*/  ahd_dev_softc_t ;

/* Variables and functions */
 int AHD_ABORT_LQI_BUG ; 
 int AHD_AIC79XXB_SLOWCRC ; 
 int /*<<< orphan*/  AHD_AMPLITUDE_DEF ; 
 int AHD_AUTOFLUSH_BUG ; 
 int AHD_BUSFREEREV_BUG ; 
 int AHD_CLRLQO_AUTOCLR_BUG ; 
 int AHD_EARLY_REQ_BUG ; 
 int AHD_FAINT_LED_BUG ; 
 int AHD_FAST_CDB_DELIVERY ; 
 int AHD_HP_BOARD ; 
 int AHD_INTCOLLISION_BUG ; 
 int AHD_LONG_SETIMO_BUG ; 
 int AHD_LQOOVERRUN_BUG ; 
 int AHD_LQO_ATNO_BUG ; 
 int AHD_MDFF_WSCBPTR_BUG ; 
 int AHD_MULTI_FUNC ; 
 int AHD_NEW_DFCNTRL_OPTS ; 
 int AHD_NEW_IOCELL_OPTS ; 
 int AHD_NLQICRC_DELAYED_BUG ; 
 int AHD_NONPACKFIFO_BUG ; 
 int AHD_PACED_NEGTABLE_BUG ; 
 int AHD_PCIX_CHIPRST_BUG ; 
 int AHD_PCIX_MMAPIO_BUG ; 
 int AHD_PCIX_SCBRAM_RD_BUG ; 
 int AHD_PKTIZED_STATUS_BUG ; 
 int AHD_PKT_BITBUCKET_BUG ; 
 int AHD_PKT_LUN_BUG ; 
 int /*<<< orphan*/  AHD_PRECOMP_CUTBACK_29 ; 
 int AHD_REG_SLOW_SETTLE_BUG ; 
 int AHD_RTI ; 
 int AHD_SCSIRST_BUG ; 
 int AHD_SENT_SCB_UPDATE_BUG ; 
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int AHD_SET_MODE_BUG ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AHD_SLEWRATE_DEF_REVA ; 
 int /*<<< orphan*/  AHD_SLEWRATE_DEF_REVB ; 
 int /*<<< orphan*/  DEVCONFIG1 ; 
 int ENXIO ; 
 scalar_t__ ID_AIC7902_PCI_REV_A4 ; 
 scalar_t__ ID_AIC7902_PCI_REV_B0 ; 
 int /*<<< orphan*/  PCIR_COMMAND ; 
 int /*<<< orphan*/  PCIR_REVID ; 
 scalar_t__ PREQDIS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (struct ahd_softc*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,scalar_t__) ; 

__attribute__((used)) static int
FUNC8(struct ahd_softc *ahd)
{
	ahd_dev_softc_t pci;
	u_int rev;

	pci = ahd->dev_softc;
	rev = FUNC5(pci, PCIR_REVID, /*bytes*/1);
	if (rev < ID_AIC7902_PCI_REV_A4) {
		FUNC7("%s: Unable to attach to unsupported chip revision %d\n",
		       FUNC4(ahd), rev);
		FUNC6(pci, PCIR_COMMAND, 0, /*bytes*/2);
		return (ENXIO);
	}
	ahd->channel = FUNC3(pci) + 'A';
	if (rev < ID_AIC7902_PCI_REV_B0) {
		/*
		 * Enable A series workarounds.
		 */
		ahd->bugs |= AHD_SENT_SCB_UPDATE_BUG|AHD_ABORT_LQI_BUG
			  |  AHD_PKT_BITBUCKET_BUG|AHD_LONG_SETIMO_BUG
			  |  AHD_NLQICRC_DELAYED_BUG|AHD_SCSIRST_BUG
			  |  AHD_LQO_ATNO_BUG|AHD_AUTOFLUSH_BUG
			  |  AHD_CLRLQO_AUTOCLR_BUG|AHD_PCIX_MMAPIO_BUG
			  |  AHD_PCIX_CHIPRST_BUG|AHD_PCIX_SCBRAM_RD_BUG
			  |  AHD_PKTIZED_STATUS_BUG|AHD_PKT_LUN_BUG
			  |  AHD_MDFF_WSCBPTR_BUG|AHD_REG_SLOW_SETTLE_BUG
			  |  AHD_SET_MODE_BUG|AHD_BUSFREEREV_BUG
			  |  AHD_NONPACKFIFO_BUG|AHD_PACED_NEGTABLE_BUG
			  |  AHD_FAINT_LED_BUG;

		/*
		 * IO Cell parameter setup.
		 */
		FUNC1(ahd, AHD_PRECOMP_CUTBACK_29);

		if ((ahd->flags & AHD_HP_BOARD) == 0)
			FUNC2(ahd, AHD_SLEWRATE_DEF_REVA);
	} else {
		/* This is revision B and newer. */
		extern uint32_t aic79xx_slowcrc;
		u_int devconfig1;

		ahd->features |= AHD_RTI|AHD_NEW_IOCELL_OPTS
			      |  AHD_NEW_DFCNTRL_OPTS|AHD_FAST_CDB_DELIVERY
			      |  AHD_BUSFREEREV_BUG;
		ahd->bugs |= AHD_LQOOVERRUN_BUG|AHD_EARLY_REQ_BUG;

		/* If the user requested that the SLOWCRC bit to be set. */
		if (aic79xx_slowcrc)
			ahd->features |= AHD_AIC79XXB_SLOWCRC;

		/*
		 * Some issues have been resolved in the 7901B.
		 */
		if ((ahd->features & AHD_MULTI_FUNC) != 0)
			ahd->bugs |= AHD_INTCOLLISION_BUG|AHD_ABORT_LQI_BUG;

		/*
		 * IO Cell parameter setup.
		 */
		FUNC1(ahd, AHD_PRECOMP_CUTBACK_29);
		FUNC2(ahd, AHD_SLEWRATE_DEF_REVB);
		FUNC0(ahd, AHD_AMPLITUDE_DEF);

		/*
		 * Set the PREQDIS bit for H2B which disables some workaround
		 * that doesn't work on regular PCI busses.
		 * XXX - Find out exactly what this does from the hardware
		 * 	 folks!
		 */
		devconfig1 = FUNC5(pci, DEVCONFIG1, /*bytes*/1);
		FUNC6(pci, DEVCONFIG1,
				     devconfig1|PREQDIS, /*bytes*/1);
		devconfig1 = FUNC5(pci, DEVCONFIG1, /*bytes*/1);
	}

	return (0);
}