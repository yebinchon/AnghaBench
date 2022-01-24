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
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  tsk; scalar_t__ sig; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int irqbits ; 
 int /*<<< orphan*/  irqbits_lock ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* vm86_irqs ; 

__attribute__((used)) static irqreturn_t FUNC4(int intno, void *dev_id)
{
	int irq_bit;
	unsigned long flags;

	FUNC2(&irqbits_lock, flags);
	irq_bit = 1 << intno;
	if ((irqbits & irq_bit) || !vm86_irqs[intno].tsk)
		goto out;
	irqbits |= irq_bit;
	if (vm86_irqs[intno].sig)
		FUNC1(vm86_irqs[intno].sig, vm86_irqs[intno].tsk, 1);
	/*
	 * IRQ will be re-enabled when user asks for the irq (whether
	 * polling or as a result of the signal)
	 */
	FUNC0(intno);
	FUNC3(&irqbits_lock, flags);
	return IRQ_HANDLED;

out:
	FUNC3(&irqbits_lock, flags);
	return IRQ_NONE;
}