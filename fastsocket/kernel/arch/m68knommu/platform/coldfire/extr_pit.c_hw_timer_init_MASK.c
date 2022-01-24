#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* min_delta_ns; void* max_delta_ns; int /*<<< orphan*/  mult; int /*<<< orphan*/  cpumask; } ;
struct TYPE_6__ {int /*<<< orphan*/  shift; int /*<<< orphan*/  mult; } ;

/* Variables and functions */
 int /*<<< orphan*/  FREQ ; 
 scalar_t__ MCFINT_PIT1 ; 
 scalar_t__ MCFINT_VECBASE ; 
 int /*<<< orphan*/  NSEC_PER_SEC ; 
 TYPE_3__ cf_pit_clockevent ; 
 void* FUNC0 (int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ pit_clk ; 
 int /*<<< orphan*/  pit_irq ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(void)
{
	cf_pit_clockevent.cpumask = FUNC4(FUNC7());
	cf_pit_clockevent.mult = FUNC5(FREQ, NSEC_PER_SEC, 32);
	cf_pit_clockevent.max_delta_ns =
		FUNC0(0xFFFF, &cf_pit_clockevent);
	cf_pit_clockevent.min_delta_ns =
		FUNC0(0x3f, &cf_pit_clockevent);
	FUNC1(&cf_pit_clockevent);

	FUNC6(MCFINT_VECBASE + MCFINT_PIT1, &pit_irq);

	pit_clk.mult = FUNC2(FREQ, pit_clk.shift);
	FUNC3(&pit_clk);
}