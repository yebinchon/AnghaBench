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
struct mm_struct {int dummy; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpumask const*,struct mm_struct*,unsigned long) ; 
 unsigned int FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct cpumask* FUNC4 (struct cpumask const*,struct mm_struct*,unsigned long,unsigned int) ; 

void FUNC5(const struct cpumask *cpumask,
			     struct mm_struct *mm, unsigned long va)
{
	if (FUNC2()) {
		unsigned int cpu;

		cpu = FUNC1();
		cpumask = FUNC4(cpumask, mm, va, cpu);
		if (cpumask)
			FUNC0(cpumask, mm, va);
		FUNC3();
		return;
	}
	FUNC0(cpumask, mm, va);
}