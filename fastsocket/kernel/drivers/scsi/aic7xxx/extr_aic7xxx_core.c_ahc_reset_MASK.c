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
typedef  int u_int ;
struct ahc_softc {int chip; int pause; int features; int (* bus_chip_init ) (struct ahc_softc*) ;} ;

/* Variables and functions */
 int AHC_AIC7770 ; 
 int AHC_CHIPID_MASK ; 
 int AHC_PCI ; 
 int AHC_TWIN ; 
 int AHC_WIDE ; 
 int CHIPRST ; 
 int CHIPRSTACK ; 
 int /*<<< orphan*/  HCNTRL ; 
 int /*<<< orphan*/  SBLKCTL ; 
 int SELBUSB ; 
 int SELWIDE ; 
 int /*<<< orphan*/  SXFRCTL1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*) ; 
 int FUNC2 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (struct ahc_softc*) ; 

int
FUNC8(struct ahc_softc *ahc, int reinit)
{
	u_int	sblkctl;
	u_int	sxfrctl1_a, sxfrctl1_b;
	int	error;
	int	wait;
	
	/*
	 * Preserve the value of the SXFRCTL1 register for all channels.
	 * It contains settings that affect termination and we don't want
	 * to disturb the integrity of the bus.
	 */
	FUNC5(ahc);
	sxfrctl1_b = 0;
	if ((ahc->chip & AHC_CHIPID_MASK) == AHC_AIC7770) {
		u_int sblkctl;

		/*
		 * Save channel B's settings in case this chip
		 * is setup for TWIN channel operation.
		 */
		sblkctl = FUNC2(ahc, SBLKCTL);
		FUNC4(ahc, SBLKCTL, sblkctl | SELBUSB);
		sxfrctl1_b = FUNC2(ahc, SXFRCTL1);
		FUNC4(ahc, SBLKCTL, sblkctl & ~SELBUSB);
	}
	sxfrctl1_a = FUNC2(ahc, SXFRCTL1);

	FUNC4(ahc, HCNTRL, CHIPRST | ahc->pause);

	/*
	 * Ensure that the reset has finished.  We delay 1000us
	 * prior to reading the register to make sure the chip
	 * has sufficiently completed its reset to handle register
	 * accesses.
	 */
	wait = 1000;
	do {
		FUNC0(1000);
	} while (--wait && !(FUNC2(ahc, HCNTRL) & CHIPRSTACK));

	if (wait == 0) {
		FUNC6("%s: WARNING - Failed chip reset!  "
		       "Trying to initialize anyway.\n", FUNC3(ahc));
	}
	FUNC4(ahc, HCNTRL, ahc->pause);

	/* Determine channel configuration */
	sblkctl = FUNC2(ahc, SBLKCTL) & (SELBUSB|SELWIDE);
	/* No Twin Channel PCI cards */
	if ((ahc->chip & AHC_PCI) != 0)
		sblkctl &= ~SELBUSB;
	switch (sblkctl) {
	case 0:
		/* Single Narrow Channel */
		break;
	case 2:
		/* Wide Channel */
		ahc->features |= AHC_WIDE;
		break;
	case 8:
		/* Twin Channel */
		ahc->features |= AHC_TWIN;
		break;
	default:
		FUNC6(" Unsupported adapter type.  Ignoring\n");
		return(-1);
	}

	/*
	 * Reload sxfrctl1.
	 *
	 * We must always initialize STPWEN to 1 before we
	 * restore the saved values.  STPWEN is initialized
	 * to a tri-state condition which can only be cleared
	 * by turning it on.
	 */
	if ((ahc->features & AHC_TWIN) != 0) {
		u_int sblkctl;

		sblkctl = FUNC2(ahc, SBLKCTL);
		FUNC4(ahc, SBLKCTL, sblkctl | SELBUSB);
		FUNC4(ahc, SXFRCTL1, sxfrctl1_b);
		FUNC4(ahc, SBLKCTL, sblkctl & ~SELBUSB);
	}
	FUNC4(ahc, SXFRCTL1, sxfrctl1_a);

	error = 0;
	if (reinit != 0)
		/*
		 * If a recovery action has forced a chip reset,
		 * re-initialize the chip to our liking.
		 */
		error = ahc->bus_chip_init(ahc);
#ifdef AHC_DUMP_SEQ
	else 
		ahc_dumpseq(ahc);
#endif

	return (error);
}