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
struct ahd_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHD_MODE_SCSI ; 
 int ATNO ; 
 int /*<<< orphan*/  CLRINT ; 
 int /*<<< orphan*/  CLRLQIINT1 ; 
 int CLRSCSIINT ; 
 int DLZERO ; 
 int /*<<< orphan*/  LQCTL2 ; 
 int LQIPHASE_LQ ; 
 int LQIPHASE_NLQ ; 
 int LQIRETRY ; 
 int /*<<< orphan*/  MDFFSTAT ; 
 int /*<<< orphan*/  SCSISIGO ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*) ; 
 int FUNC1 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9(struct ahd_softc *ahd, u_int lqistat1)
{
	/*
	 * Clear the sources of the interrupts.
	 */
	FUNC5(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
	FUNC2(ahd, CLRLQIINT1, lqistat1);

	/*
	 * If the "illegal" phase changes were in response
	 * to our ATN to flag a CRC error, AND we ended up
	 * on packet boundaries, clear the error, restart the
	 * LQI manager as appropriate, and go on our merry
	 * way toward sending the message.  Otherwise, reset
	 * the bus to clear the error.
	 */
	FUNC4(ahd);
	if ((FUNC1(ahd, SCSISIGO) & ATNO) != 0
	 && (FUNC1(ahd, MDFFSTAT) & DLZERO) != 0) {
		if ((lqistat1 & LQIPHASE_LQ) != 0) {
			FUNC8("LQIRETRY for LQIPHASE_LQ\n");
			FUNC2(ahd, LQCTL2, LQIRETRY);
		} else if ((lqistat1 & LQIPHASE_NLQ) != 0) {
			FUNC8("LQIRETRY for LQIPHASE_NLQ\n");
			FUNC2(ahd, LQCTL2, LQIRETRY);
		} else
			FUNC7("ahd_handle_lqiphase_error: No phase errors\n");
		FUNC0(ahd);
		FUNC2(ahd, CLRINT, CLRSCSIINT);
		FUNC6(ahd);
	} else {
		FUNC8("Reseting Channel for LQI Phase error\n");
		FUNC0(ahd);
		FUNC3(ahd, 'A', /*Initiate Reset*/TRUE);
	}
}