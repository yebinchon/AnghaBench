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
struct scb {int dummy; } ;
struct ahd_softc {int dummy; } ;

/* Variables and functions */
 int CFG4DATA ; 
 int INVALID_ADDR ; 
 scalar_t__ LONGJMP_ADDR ; 
 int SAVEPTRS ; 
 scalar_t__ FUNC0 (struct scb*) ; 
 scalar_t__ SEQINTSRC ; 
 scalar_t__ FUNC1 (struct ahd_softc*) ; 
 int FUNC2 (struct ahd_softc*,scalar_t__) ; 

__attribute__((used)) static int
FUNC3(struct ahd_softc *ahd, struct scb *scb)
{

	/*
	 * The FIFO is only active for our transaction if
	 * the SCBPTR matches the SCB's ID and the firmware
	 * has installed a handler for the FIFO or we have
	 * a pending SAVEPTRS or CFG4DATA interrupt.
	 */
	if (FUNC1(ahd) != FUNC0(scb)
	 || ((FUNC2(ahd, LONGJMP_ADDR+1) & INVALID_ADDR) != 0
	  && (FUNC2(ahd, SEQINTSRC) & (CFG4DATA|SAVEPTRS)) == 0))
		return (0);

	return (1);
}