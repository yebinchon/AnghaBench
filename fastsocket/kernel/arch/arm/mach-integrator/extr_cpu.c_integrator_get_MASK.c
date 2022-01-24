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
typedef  int u_int ;
struct icst525_vco {int s; int v; int r; } ;
typedef  int /*<<< orphan*/  cpumask_t ;
struct TYPE_3__ {int /*<<< orphan*/  cpus_allowed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CM_OSC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cclk_params ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 TYPE_1__* current ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,struct icst525_vco) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 () ; 

__attribute__((used)) static unsigned int FUNC8(unsigned int cpu)
{
	cpumask_t cpus_allowed;
	unsigned int current_freq;
	u_int cm_osc;
	struct icst525_vco vco;

	cpus_allowed = current->cpus_allowed;

	FUNC6(current, FUNC2(cpu));
	FUNC0(cpu != FUNC7());

	/* detect memory etc. */
	cm_osc = FUNC1(CM_OSC);

	if (FUNC5()) {
		vco.s = (cm_osc >> 8) & 7;
	} else if (FUNC4()) {
		vco.s = 1;
	}
	vco.v = cm_osc & 255;
	vco.r = 22;

	current_freq = FUNC3(&cclk_params, vco); /* current freq */

	FUNC6(current, cpus_allowed);

	return current_freq;
}