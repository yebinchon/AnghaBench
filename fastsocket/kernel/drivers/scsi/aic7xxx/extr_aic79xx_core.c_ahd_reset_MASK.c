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
typedef  int uint32_t ;
typedef  int u_int ;
struct ahd_softc {int bugs; int pause; int /*<<< orphan*/  features; int /*<<< orphan*/  dev_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHD_MODE_SCSI ; 
 int AHD_PCIX_CHIPRST_BUG ; 
 int /*<<< orphan*/  AHD_WIDE ; 
 int CHIPRST ; 
 int CHIPRSTACK ; 
 int /*<<< orphan*/  HCNTRL ; 
 int /*<<< orphan*/  MODE_PTR ; 
 int PCIM_CMD_PERRESPEN ; 
 int PCIM_CMD_SERRESPEN ; 
 scalar_t__ PCIR_COMMAND ; 
 scalar_t__ PCIR_STATUS ; 
 int /*<<< orphan*/  SBLKCTL ; 
 int SELWIDE ; 
 int STPWEN ; 
 int /*<<< orphan*/  SXFRCTL1 ; 
 int FUNC0 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ahd_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ahd_softc*) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 

int
FUNC13(struct ahd_softc *ahd, int reinit)
{
	u_int	 sxfrctl1;
	int	 wait;
	uint32_t cmd;
	
	/*
	 * Preserve the value of the SXFRCTL1 register for all channels.
	 * It contains settings that affect termination and we don't want
	 * to disturb the integrity of the bus.
	 */
	FUNC7(ahd);
	FUNC11(ahd);
	FUNC10(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
	sxfrctl1 = FUNC3(ahd, SXFRCTL1);

	cmd = FUNC8(ahd->dev_softc, PCIR_COMMAND, /*bytes*/2);
	if ((ahd->bugs & AHD_PCIX_CHIPRST_BUG) != 0) {
		uint32_t mod_cmd;

		/*
		 * A4 Razor #632
		 * During the assertion of CHIPRST, the chip
		 * does not disable its parity logic prior to
		 * the start of the reset.  This may cause a
		 * parity error to be detected and thus a
		 * spurious SERR or PERR assertion.  Disble
		 * PERR and SERR responses during the CHIPRST.
		 */
		mod_cmd = cmd & ~(PCIM_CMD_PERRESPEN|PCIM_CMD_SERRESPEN);
		FUNC9(ahd->dev_softc, PCIR_COMMAND,
				     mod_cmd, /*bytes*/2);
	}
	FUNC6(ahd, HCNTRL, CHIPRST | ahd->pause);

	/*
	 * Ensure that the reset has finished.  We delay 1000us
	 * prior to reading the register to make sure the chip
	 * has sufficiently completed its reset to handle register
	 * accesses.
	 */
	wait = 1000;
	do {
		FUNC2(1000);
	} while (--wait && !(FUNC3(ahd, HCNTRL) & CHIPRSTACK));

	if (wait == 0) {
		FUNC12("%s: WARNING - Failed chip reset!  "
		       "Trying to initialize anyway.\n", FUNC5(ahd));
	}
	FUNC6(ahd, HCNTRL, ahd->pause);

	if ((ahd->bugs & AHD_PCIX_CHIPRST_BUG) != 0) {
		/*
		 * Clear any latched PCI error status and restore
		 * previous SERR and PERR response enables.
		 */
		FUNC9(ahd->dev_softc, PCIR_STATUS + 1,
				     0xFF, /*bytes*/1);
		FUNC9(ahd->dev_softc, PCIR_COMMAND,
				     cmd, /*bytes*/2);
	}

	/*
	 * Mode should be SCSI after a chip reset, but lets
	 * set it just to be safe.  We touch the MODE_PTR
	 * register directly so as to bypass the lazy update
	 * code in ahd_set_modes().
	 */
	FUNC4(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
	FUNC6(ahd, MODE_PTR,
		 FUNC0(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI));

	/*
	 * Restore SXFRCTL1.
	 *
	 * We must always initialize STPWEN to 1 before we
	 * restore the saved values.  STPWEN is initialized
	 * to a tri-state condition which can only be cleared
	 * by turning it on.
	 */
	FUNC6(ahd, SXFRCTL1, sxfrctl1|STPWEN);
	FUNC6(ahd, SXFRCTL1, sxfrctl1);

	/* Determine chip configuration */
	ahd->features &= ~AHD_WIDE;
	if ((FUNC3(ahd, SBLKCTL) & SELWIDE) != 0)
		ahd->features |= AHD_WIDE;

	/*
	 * If a recovery action has forced a chip reset,
	 * re-initialize the chip to our liking.
	 */
	if (reinit != 0)
		FUNC1(ahd);

	return (0);
}