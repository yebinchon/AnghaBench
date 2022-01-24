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
struct TYPE_2__ {int /*<<< orphan*/  hw_state; int /*<<< orphan*/  mac_ring_is_up; } ;
struct s_smc {TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FM_ADDET ; 
 int /*<<< orphan*/  FM_CMDREG2 ; 
 int /*<<< orphan*/  FM_IACTR ; 
 int /*<<< orphan*/  FM_MDISRCV ; 
 int /*<<< orphan*/  FM_MDREG1 ; 
 int /*<<< orphan*/  FM_MINIT ; 
 int /*<<< orphan*/  FM_MMODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STOPPED ; 
 int /*<<< orphan*/  FUNC2 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct s_smc *smc)
{
	FUNC3(FUNC0(FM_CMDREG2),FM_IACTR) ;/* abort current transmit activity */

	/* disable receive function */
	FUNC1(FUNC0(FM_MDREG1),FM_MDISRCV,FM_ADDET) ;

	/* FORMAC+ 'Initialize Mode' */
	FUNC1(FUNC0(FM_MDREG1),FM_MINIT,FM_MMODE) ;

	FUNC2(smc) ;
	smc->hw.mac_ring_is_up = FALSE ;
	smc->hw.hw_state = STOPPED ;
}