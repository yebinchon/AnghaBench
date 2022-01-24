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
struct ahc_softc {int /*<<< orphan*/  unpause; int /*<<< orphan*/  pause; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCNTRL ; 
 int /*<<< orphan*/  INTEN ; 
 int /*<<< orphan*/  FUNC0 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct ahc_softc *ahc, int enable)
{
	u_int hcntrl;

	hcntrl = FUNC0(ahc, HCNTRL);
	hcntrl &= ~INTEN;
	ahc->pause &= ~INTEN;
	ahc->unpause &= ~INTEN;
	if (enable) {
		hcntrl |= INTEN;
		ahc->pause |= INTEN;
		ahc->unpause |= INTEN;
	}
	FUNC1(ahc, HCNTRL, hcntrl);
}