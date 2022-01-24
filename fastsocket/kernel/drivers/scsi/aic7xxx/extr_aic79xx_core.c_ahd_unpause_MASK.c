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
struct ahd_softc {scalar_t__ saved_src_mode; scalar_t__ saved_dst_mode; int flags; int /*<<< orphan*/  unpause; } ;

/* Variables and functions */
 scalar_t__ AHD_MODE_UNKNOWN ; 
 int AHD_UPDATE_PEND_CMDS ; 
 int CMDCMPLT ; 
 int /*<<< orphan*/  HCNTRL ; 
 int /*<<< orphan*/  INTSTAT ; 
 int FUNC0 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*,scalar_t__,scalar_t__) ; 

void
FUNC5(struct ahd_softc *ahd)
{
	/*
	 * Automatically restore our modes to those saved
	 * prior to the first change of the mode.
	 */
	if (ahd->saved_src_mode != AHD_MODE_UNKNOWN
	 && ahd->saved_dst_mode != AHD_MODE_UNKNOWN) {
		if ((ahd->flags & AHD_UPDATE_PEND_CMDS) != 0)
			FUNC3(ahd);
		FUNC4(ahd, ahd->saved_src_mode, ahd->saved_dst_mode);
	}

	if ((FUNC0(ahd, INTSTAT) & ~CMDCMPLT) == 0)
		FUNC2(ahd, HCNTRL, ahd->unpause);

	FUNC1(ahd, AHD_MODE_UNKNOWN, AHD_MODE_UNKNOWN);
}