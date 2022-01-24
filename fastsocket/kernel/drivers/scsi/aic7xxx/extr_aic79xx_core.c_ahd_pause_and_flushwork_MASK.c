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
struct ahd_softc {int features; int /*<<< orphan*/  flags; int /*<<< orphan*/  qfreeze_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHD_ALL_INTERRUPTS ; 
 int AHD_REMOVABLE ; 
 int ENSELO ; 
 int /*<<< orphan*/  INTSTAT ; 
 int INT_PEND ; 
 int /*<<< orphan*/  KERNEL_QFREEZE_COUNT ; 
 int /*<<< orphan*/  SCSISEQ0 ; 
 int SELDO ; 
 int SELECTOUT_QFROZEN ; 
 int SELINGO ; 
 int /*<<< orphan*/  SEQ_FLAGS2 ; 
 int /*<<< orphan*/  SSTAT0 ; 
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*) ; 
 int FUNC3 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 

void
FUNC10(struct ahd_softc *ahd)
{
	u_int intstat;
	u_int maxloops;

	maxloops = 1000;
	ahd->flags |= AHD_ALL_INTERRUPTS;
	FUNC7(ahd);
	/*
	 * Freeze the outgoing selections.  We do this only
	 * until we are safely paused without further selections
	 * pending.
	 */
	ahd->qfreeze_cnt--;
	FUNC6(ahd, KERNEL_QFREEZE_COUNT, ahd->qfreeze_cnt);
	FUNC5(ahd, SEQ_FLAGS2, FUNC3(ahd, SEQ_FLAGS2) | SELECTOUT_QFROZEN);
	do {

		FUNC8(ahd);
		/*
		 * Give the sequencer some time to service
		 * any active selections.
		 */
		FUNC1(500);

		FUNC4(ahd);
		FUNC7(ahd);
		intstat = FUNC3(ahd, INTSTAT);
		if ((intstat & INT_PEND) == 0) {
			FUNC0(ahd);
			intstat = FUNC3(ahd, INTSTAT);
		}
	} while (--maxloops
	      && (intstat != 0xFF || (ahd->features & AHD_REMOVABLE) == 0)
	      && ((intstat & INT_PEND) != 0
	       || (FUNC3(ahd, SCSISEQ0) & ENSELO) != 0
	       || (FUNC3(ahd, SSTAT0) & (SELDO|SELINGO)) != 0));

	if (maxloops == 0) {
		FUNC9("Infinite interrupt loop, INTSTAT = %x",
		      FUNC3(ahd, INTSTAT));
	}
	ahd->qfreeze_cnt++;
	FUNC6(ahd, KERNEL_QFREEZE_COUNT, ahd->qfreeze_cnt);

	FUNC2(ahd);

	ahd->flags &= ~AHD_ALL_INTERRUPTS;
}