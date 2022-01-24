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
struct TYPE_2__ {int /*<<< orphan*/  max_pstate; int /*<<< orphan*/  turbo_pstate; int /*<<< orphan*/  min_pstate; } ;
struct cpudata {TYPE_1__ pstate; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct cpudata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(struct cpudata *cpu)
{
	FUNC4(cpu->name, "Intel 2nd generation core");

	cpu->pstate.min_pstate = FUNC1();
	cpu->pstate.max_pstate = FUNC0();
	cpu->pstate.turbo_pstate = FUNC3();

	/*
	 * goto max pstate so we don't slow up boot if we are built-in if we are
	 * a module we will take care of it during normal operation
	 */
	FUNC2(cpu, cpu->pstate.max_pstate);
}