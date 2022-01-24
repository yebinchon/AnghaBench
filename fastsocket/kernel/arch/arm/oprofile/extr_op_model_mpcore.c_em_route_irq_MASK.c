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
struct irq_desc {int /*<<< orphan*/  lock; TYPE_1__* chip; int /*<<< orphan*/  affinity; } ;
struct cpumask {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_affinity ) (int,struct cpumask const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct cpumask const*) ; 
 struct cpumask* FUNC1 (unsigned int) ; 
 struct irq_desc* irq_desc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,struct cpumask const*) ; 

__attribute__((used)) static void FUNC5(int irq, unsigned int cpu)
{
	struct irq_desc *desc = irq_desc + irq;
	const struct cpumask *mask = FUNC1(cpu);

	FUNC2(&desc->lock);
	FUNC0(desc->affinity, mask);
	desc->chip->set_affinity(irq, mask);
	FUNC3(&desc->lock);
}