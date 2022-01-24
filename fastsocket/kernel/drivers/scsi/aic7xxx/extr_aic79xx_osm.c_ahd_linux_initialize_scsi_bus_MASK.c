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
struct ahd_tmode_tstate {int dummy; } ;
struct ahd_softc {int flags; int features; int /*<<< orphan*/  our_id; } ;
struct ahd_initiator_tinfo {int dummy; } ;
struct ahd_devinfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHD_NEG_ALWAYS ; 
 int AHD_RESET_BUS_A ; 
 int AHD_WIDE ; 
 int /*<<< orphan*/  AIC79XX_RESET_DELAY ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 int /*<<< orphan*/  ROLE_INITIATOR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct ahd_devinfo*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 
 struct ahd_initiator_tinfo* FUNC1 (struct ahd_softc*,char,int /*<<< orphan*/ ,int,struct ahd_tmode_tstate**) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ahd_softc*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (struct ahd_softc*,struct ahd_devinfo*,struct ahd_tmode_tstate*,struct ahd_initiator_tinfo*,int /*<<< orphan*/ ) ; 
 scalar_t__ aic79xx_no_reset ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct ahd_softc *ahd)
{
	u_int target_id;
	u_int numtarg;
	unsigned long s;

	target_id = 0;
	numtarg = 0;

	if (aic79xx_no_reset != 0)
		ahd->flags &= ~AHD_RESET_BUS_A;

	if ((ahd->flags & AHD_RESET_BUS_A) != 0)
		FUNC5(ahd, 'A', /*initiate_reset*/TRUE);
	else
		numtarg = (ahd->features & AHD_WIDE) ? 16 : 8;

	FUNC3(ahd, &s);

	/*
	 * Force negotiation to async for all targets that
	 * will not see an initial bus reset.
	 */
	for (; target_id < numtarg; target_id++) {
		struct ahd_devinfo devinfo;
		struct ahd_initiator_tinfo *tinfo;
		struct ahd_tmode_tstate *tstate;

		tinfo = FUNC1(ahd, 'A', ahd->our_id,
					    target_id, &tstate);
		FUNC0(&devinfo, ahd->our_id, target_id,
				    CAM_LUN_WILDCARD, 'A', ROLE_INITIATOR);
		FUNC7(ahd, &devinfo, tstate,
				       tinfo, AHD_NEG_ALWAYS);
	}
	FUNC6(ahd, &s);
	/* Give the bus some time to recover */
	if ((ahd->flags & AHD_RESET_BUS_A) != 0) {
		FUNC2(ahd);
		FUNC8(AIC79XX_RESET_DELAY);
		FUNC4(ahd);
	}
}