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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int u_int ;
struct ahd_softc {int flags; int /*<<< orphan*/  dev_softc; } ;

/* Variables and functions */
 int AHD_CURRENT_SENSING ; 
 int AHD_STPWLEVEL_A ; 
 int AHD_TERM_ENB_A ; 
 int CFAUTOTERM ; 
 int CFSEAUTOTERM ; 
 int CFSEHIGHTERM ; 
 int CFSELOWTERM ; 
 int CFSTERM ; 
 int CFWSTERM ; 
 int /*<<< orphan*/  DEVCONFIG ; 
 int /*<<< orphan*/  FLXADDR_ROMSTAT_CURSENSECTL ; 
 int /*<<< orphan*/  FLXADDR_TERMCTL ; 
 int FLX_TERMCTL_ENPRIHIGH ; 
 int FLX_TERMCTL_ENPRILOW ; 
 int FLX_TERMCTL_ENSECHIGH ; 
 int FLX_TERMCTL_ENSECLOW ; 
 int STPWEN ; 
 int STPWLEVEL ; 
 int /*<<< orphan*/  SXFRCTL1 ; 
 int FUNC0 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (struct ahd_softc*,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (struct ahd_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 

__attribute__((used)) static void
FUNC8(struct ahd_softc *ahd, u_int adapter_control)
{
	int	 error;
	u_int	 sxfrctl1;
	uint8_t	 termctl;
	uint32_t devconfig;

	devconfig = FUNC3(ahd->dev_softc, DEVCONFIG, /*bytes*/4);
	devconfig &= ~STPWLEVEL;
	if ((ahd->flags & AHD_STPWLEVEL_A) != 0)
		devconfig |= STPWLEVEL;
	if (bootverbose)
		FUNC7("%s: STPWLEVEL is %s\n",
		       FUNC1(ahd), (devconfig & STPWLEVEL) ? "on" : "off");
	FUNC4(ahd->dev_softc, DEVCONFIG, devconfig, /*bytes*/4);
 
	/* Make sure current sensing is off. */
	if ((ahd->flags & AHD_CURRENT_SENSING) != 0) {
		(void)FUNC6(ahd, FLXADDR_ROMSTAT_CURSENSECTL, 0);
	}

	/*
	 * Read to sense.  Write to set.
	 */
	error = FUNC5(ahd, FLXADDR_TERMCTL, &termctl);
	if ((adapter_control & CFAUTOTERM) == 0) {
		if (bootverbose)
			FUNC7("%s: Manual Primary Termination\n",
			       FUNC1(ahd));
		termctl &= ~(FLX_TERMCTL_ENPRILOW|FLX_TERMCTL_ENPRIHIGH);
		if ((adapter_control & CFSTERM) != 0)
			termctl |= FLX_TERMCTL_ENPRILOW;
		if ((adapter_control & CFWSTERM) != 0)
			termctl |= FLX_TERMCTL_ENPRIHIGH;
	} else if (error != 0) {
		FUNC7("%s: Primary Auto-Term Sensing failed! "
		       "Using Defaults.\n", FUNC1(ahd));
		termctl = FLX_TERMCTL_ENPRILOW|FLX_TERMCTL_ENPRIHIGH;
	}

	if ((adapter_control & CFSEAUTOTERM) == 0) {
		if (bootverbose)
			FUNC7("%s: Manual Secondary Termination\n",
			       FUNC1(ahd));
		termctl &= ~(FLX_TERMCTL_ENSECLOW|FLX_TERMCTL_ENSECHIGH);
		if ((adapter_control & CFSELOWTERM) != 0)
			termctl |= FLX_TERMCTL_ENSECLOW;
		if ((adapter_control & CFSEHIGHTERM) != 0)
			termctl |= FLX_TERMCTL_ENSECHIGH;
	} else if (error != 0) {
		FUNC7("%s: Secondary Auto-Term Sensing failed! "
		       "Using Defaults.\n", FUNC1(ahd));
		termctl |= FLX_TERMCTL_ENSECLOW|FLX_TERMCTL_ENSECHIGH;
	}

	/*
	 * Now set the termination based on what we found.
	 */
	sxfrctl1 = FUNC0(ahd, SXFRCTL1) & ~STPWEN;
	ahd->flags &= ~AHD_TERM_ENB_A;
	if ((termctl & FLX_TERMCTL_ENPRILOW) != 0) {
		ahd->flags |= AHD_TERM_ENB_A;
		sxfrctl1 |= STPWEN;
	}
	/* Must set the latch once in order to be effective. */
	FUNC2(ahd, SXFRCTL1, sxfrctl1|STPWEN);
	FUNC2(ahd, SXFRCTL1, sxfrctl1);

	error = FUNC6(ahd, FLXADDR_TERMCTL, termctl);
	if (error != 0) {
		FUNC7("%s: Unable to set termination settings!\n",
		       FUNC1(ahd));
	} else if (bootverbose) {
		FUNC7("%s: Primary High byte termination %sabled\n",
		       FUNC1(ahd),
		       (termctl & FLX_TERMCTL_ENPRIHIGH) ? "En" : "Dis");

		FUNC7("%s: Primary Low byte termination %sabled\n",
		       FUNC1(ahd),
		       (termctl & FLX_TERMCTL_ENPRILOW) ? "En" : "Dis");

		FUNC7("%s: Secondary High byte termination %sabled\n",
		       FUNC1(ahd),
		       (termctl & FLX_TERMCTL_ENSECHIGH) ? "En" : "Dis");

		FUNC7("%s: Secondary Low byte termination %sabled\n",
		       FUNC1(ahd),
		       (termctl & FLX_TERMCTL_ENSECLOW) ? "En" : "Dis");
	}
	return;
}