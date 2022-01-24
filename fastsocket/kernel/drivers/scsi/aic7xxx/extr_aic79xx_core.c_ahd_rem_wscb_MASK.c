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
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AHD_MODE_SCSI_MSK ; 
 scalar_t__ FUNC1 (int) ; 
 int SCB_NEXT ; 
 int WAITING_SCB_TAILS ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,int) ; 
 int FUNC3 (struct ahd_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*,int) ; 

__attribute__((used)) static u_int
FUNC6(struct ahd_softc *ahd, u_int scbid,
	     u_int prev, u_int next, u_int tid)
{
	u_int tail_offset;

	FUNC0(ahd, AHD_MODE_SCSI_MSK, AHD_MODE_SCSI_MSK);
	if (!FUNC1(prev)) {
		FUNC5(ahd, prev);
		FUNC4(ahd, SCB_NEXT, next);
	}

	/*
	 * SCBs that have MK_MESSAGE set in them may
	 * cause the tail pointer to be updated without
	 * setting the next pointer of the previous tail.
	 * Only clear the tail if the removed SCB was
	 * the tail.
	 */
	tail_offset = WAITING_SCB_TAILS + (2 * tid);
	if (FUNC1(next)
	 && FUNC3(ahd, tail_offset) == scbid)
		FUNC4(ahd, tail_offset, prev);

	FUNC2(ahd, scbid);
	return (next);
}