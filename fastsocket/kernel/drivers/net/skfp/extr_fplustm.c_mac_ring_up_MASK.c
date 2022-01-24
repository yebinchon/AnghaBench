#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  mac_ring_is_up; } ;
struct s_smc {TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FM_ADDET ; 
 int /*<<< orphan*/  FM_CMDREG2 ; 
 int /*<<< orphan*/  FM_IACTR ; 
 int /*<<< orphan*/  FM_MDISRCV ; 
 int /*<<< orphan*/  FM_MDREG1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC3 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct s_smc *smc, int up)
{
	if (up) {
		FUNC2(smc) ;	/* enable receive function */
		smc->hw.mac_ring_is_up = TRUE ;
		FUNC3(smc) ;		/* TX queue */
	}
	else {
		/* disable receive function */
		FUNC1(FUNC0(FM_MDREG1),FM_MDISRCV,FM_ADDET) ;

		/* abort current transmit activity */
		FUNC4(FUNC0(FM_CMDREG2),FM_IACTR) ;

		smc->hw.mac_ring_is_up = FALSE ;
	}
}