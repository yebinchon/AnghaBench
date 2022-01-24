#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  shift; int /*<<< orphan*/  mult; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_PRE ; 
 int CLOCK_SOURCE ; 
 int HZ ; 
 int TCMP ; 
 int TCTL ; 
 int TCTL_IRQEN ; 
 int TCTL_OM ; 
 int TCTL_TEN ; 
 int TICKS_PER_JIFFY ; 
 int /*<<< orphan*/  TMR_IRQ_NUM ; 
 int /*<<< orphan*/  TPRER ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__ m68328_clk ; 
 int /*<<< orphan*/  m68328_timer_irq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
	/* disable timer 1 */
	TCTL = 0;

	/* set ISR */
	FUNC2(TMR_IRQ_NUM, &m68328_timer_irq);

	/* Restart mode, Enable int, Set clock source */
	TCTL = TCTL_OM | TCTL_IRQEN | CLOCK_SOURCE;
	TPRER = CLOCK_PRE;
	TCMP = TICKS_PER_JIFFY;

	/* Enable timer 1 */
	TCTL |= TCTL_TEN;
	m68328_clk.mult = FUNC0(TICKS_PER_JIFFY*HZ, m68328_clk.shift);
	FUNC1(&m68328_clk);
}