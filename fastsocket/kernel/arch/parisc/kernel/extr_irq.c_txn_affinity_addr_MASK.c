#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  affinity; } ;
struct TYPE_3__ {unsigned long txn_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__* irq_desc ; 
 TYPE_1__ FUNC2 (int /*<<< orphan*/ ,int) ; 

unsigned long FUNC3(unsigned int irq, int cpu)
{
#ifdef CONFIG_SMP
	cpumask_copy(irq_desc[irq].affinity, cpumask_of(cpu));
#endif

	return FUNC2(cpu_data, cpu).txn_addr;
}