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
struct cpudata {TYPE_1__* pstate_policy; int /*<<< orphan*/  pid; } ;
struct TYPE_2__ {int /*<<< orphan*/  deadband; int /*<<< orphan*/  setpoint; int /*<<< orphan*/  i_gain_pct; int /*<<< orphan*/  d_gain_pct; int /*<<< orphan*/  p_gain_pct; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct cpudata *cpu)
{
	FUNC2(&cpu->pid, cpu->pstate_policy->p_gain_pct);
	FUNC0(&cpu->pid, cpu->pstate_policy->d_gain_pct);
	FUNC1(&cpu->pid, cpu->pstate_policy->i_gain_pct);

	FUNC3(&cpu->pid,
		cpu->pstate_policy->setpoint,
		100,
		cpu->pstate_policy->deadband,
		0);
}