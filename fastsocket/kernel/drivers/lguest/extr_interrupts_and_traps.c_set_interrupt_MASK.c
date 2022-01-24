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
struct lg_cpu {int /*<<< orphan*/  tsk; int /*<<< orphan*/  irqs_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct lg_cpu *cpu, unsigned int irq)
{
	/*
	 * Next time the Guest runs, the core code will see if it can deliver
	 * this interrupt.
	 */
	FUNC1(irq, cpu->irqs_pending);

	/*
	 * Make sure it sees it; it might be asleep (eg. halted), or running
	 * the Guest right now, in which case kick_process() will knock it out.
	 */
	if (!FUNC2(cpu->tsk))
		FUNC0(cpu->tsk);
}