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
typedef  int /*<<< orphan*/  u_int ;
struct ahd_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AHD_MODE_SCSI_MSK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCB_NEXT2 ; 
 int /*<<< orphan*/  WAITING_TID_HEAD ; 
 int /*<<< orphan*/  WAITING_TID_TAIL ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct ahd_softc *ahd, u_int tid_prev,
		    u_int tid_cur, u_int tid_next)
{
	FUNC0(ahd, AHD_MODE_SCSI_MSK, AHD_MODE_SCSI_MSK);

	if (FUNC1(tid_cur)) {

		/* Bypass current TID list */
		if (FUNC1(tid_prev)) {
			FUNC2(ahd, WAITING_TID_HEAD, tid_next);
		} else {
			FUNC3(ahd, tid_prev);
			FUNC2(ahd, SCB_NEXT2, tid_next);
		}
		if (FUNC1(tid_next))
			FUNC2(ahd, WAITING_TID_TAIL, tid_prev);
	} else {

		/* Stitch through tid_cur */
		if (FUNC1(tid_prev)) {
			FUNC2(ahd, WAITING_TID_HEAD, tid_cur);
		} else {
			FUNC3(ahd, tid_prev);
			FUNC2(ahd, SCB_NEXT2, tid_cur);
		}
		FUNC3(ahd, tid_cur);
		FUNC2(ahd, SCB_NEXT2, tid_next);

		if (FUNC1(tid_next))
			FUNC2(ahd, WAITING_TID_TAIL, tid_cur);
	}
}