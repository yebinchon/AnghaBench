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
struct TYPE_4__ {int /*<<< orphan*/  current_pstate; int /*<<< orphan*/  turbo_pstate; } ;
struct cpudata {size_t sample_ptr; TYPE_2__ pstate; TYPE_1__* samples; } ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_3__ {int /*<<< orphan*/  core_pct_busy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC4(struct cpudata *cpu)
{
	int32_t busy_scaled;
	int32_t core_busy, turbo_pstate, current_pstate;

	core_busy = FUNC2(cpu->samples[cpu->sample_ptr].core_pct_busy);
	turbo_pstate = FUNC2(cpu->pstate.turbo_pstate);
	current_pstate = FUNC2(cpu->pstate.current_pstate);
	busy_scaled = FUNC3(core_busy, FUNC0(turbo_pstate, current_pstate));

	return FUNC1(busy_scaled);
}