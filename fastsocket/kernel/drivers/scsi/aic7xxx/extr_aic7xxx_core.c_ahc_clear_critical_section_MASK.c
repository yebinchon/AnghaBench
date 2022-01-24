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
struct cs {int begin; int end; } ;
struct ahc_softc {scalar_t__ num_critical_sections; int features; int seqctl; int unpause; struct cs* critical_sections; } ;

/* Variables and functions */
 int AHC_DT ; 
 int AHC_MAX_STEPS ; 
 int CLRBUSFREE ; 
 int /*<<< orphan*/  CLRINT ; 
 int CLRSCSIINT ; 
 int /*<<< orphan*/  CLRSINT1 ; 
 int ENBUSFREE ; 
 int FALSE ; 
 int /*<<< orphan*/  HCNTRL ; 
 int /*<<< orphan*/  SEQADDR0 ; 
 int /*<<< orphan*/  SEQADDR1 ; 
 int /*<<< orphan*/  SEQCTL ; 
 int /*<<< orphan*/  SIMODE0 ; 
 int /*<<< orphan*/  SIMODE1 ; 
 int STEP ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*) ; 
 int FUNC2 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*) ; 
 char* FUNC4 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static void
FUNC8(struct ahc_softc *ahc)
{
	int	stepping;
	int	steps;
	u_int	simode0;
	u_int	simode1;

	if (ahc->num_critical_sections == 0)
		return;

	stepping = FALSE;
	steps = 0;
	simode0 = 0;
	simode1 = 0;
	for (;;) {
		struct	cs *cs;
		u_int	seqaddr;
		u_int	i;

		seqaddr = FUNC2(ahc, SEQADDR0)
			| (FUNC2(ahc, SEQADDR1) << 8);

		/*
		 * Seqaddr represents the next instruction to execute, 
		 * so we are really executing the instruction just
		 * before it.
		 */
		if (seqaddr != 0)
			seqaddr -= 1;
		cs = ahc->critical_sections;
		for (i = 0; i < ahc->num_critical_sections; i++, cs++) {
			
			if (cs->begin < seqaddr && cs->end >= seqaddr)
				break;
		}

		if (i == ahc->num_critical_sections)
			break;

		if (steps > AHC_MAX_STEPS) {
			FUNC7("%s: Infinite loop in critical section\n",
			       FUNC4(ahc));
			FUNC1(ahc);
			FUNC6("critical section loop");
		}

		steps++;
		if (stepping == FALSE) {

			/*
			 * Disable all interrupt sources so that the
			 * sequencer will not be stuck by a pausing
			 * interrupt condition while we attempt to
			 * leave a critical section.
			 */
			simode0 = FUNC2(ahc, SIMODE0);
			FUNC5(ahc, SIMODE0, 0);
			simode1 = FUNC2(ahc, SIMODE1);
			if ((ahc->features & AHC_DT) != 0)
				/*
				 * On DT class controllers, we
				 * use the enhanced busfree logic.
				 * Unfortunately we cannot re-enable
				 * busfree detection within the
				 * current connection, so we must
				 * leave it on while single stepping.
				 */
				FUNC5(ahc, SIMODE1, simode1 & ENBUSFREE);
			else
				FUNC5(ahc, SIMODE1, 0);
			FUNC5(ahc, CLRINT, CLRSCSIINT);
			FUNC5(ahc, SEQCTL, ahc->seqctl | STEP);
			stepping = TRUE;
		}
		if ((ahc->features & AHC_DT) != 0) {
			FUNC5(ahc, CLRSINT1, CLRBUSFREE);
			FUNC5(ahc, CLRINT, CLRSCSIINT);
		}
		FUNC5(ahc, HCNTRL, ahc->unpause);
		while (!FUNC3(ahc))
			FUNC0(200);
	}
	if (stepping) {
		FUNC5(ahc, SIMODE0, simode0);
		FUNC5(ahc, SIMODE1, simode1);
		FUNC5(ahc, SEQCTL, ahc->seqctl);
	}
}