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
typedef  int /*<<< orphan*/  cpumask_t ;
struct TYPE_3__ {int /*<<< orphan*/  cpus_allowed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 void FUNC2 (void*) ; 

__attribute__((used)) static void
FUNC3(int cpu, void (*fn)(void *), void *arg)
{
	cpumask_t save_cpus_allowed = current->cpus_allowed;
	cpumask_t new_cpus_allowed = FUNC0(cpu);
	FUNC1(current, new_cpus_allowed);
	(*fn)(arg);
	FUNC1(current, save_cpus_allowed);
}