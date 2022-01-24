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
struct ahd_softc {int /*<<< orphan*/  unpause; int /*<<< orphan*/  pause; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCNTRL ; 
 int /*<<< orphan*/  INTEN ; 
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct ahd_softc *ahd, int enable)
{
	u_int hcntrl;

	hcntrl = FUNC0(ahd, HCNTRL);
	hcntrl &= ~INTEN;
	ahd->pause &= ~INTEN;
	ahd->unpause &= ~INTEN;
	if (enable) {
		hcntrl |= INTEN;
		ahd->pause |= INTEN;
		ahd->unpause |= INTEN;
	}
	FUNC1(ahd, HCNTRL, hcntrl);
}