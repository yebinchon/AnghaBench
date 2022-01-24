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
typedef  scalar_t__ cputime64_t ;
struct TYPE_3__ {int /*<<< orphan*/  nice; int /*<<< orphan*/  steal; int /*<<< orphan*/  softirq; int /*<<< orphan*/  irq; int /*<<< orphan*/  system; scalar_t__ user; } ;
struct TYPE_4__ {TYPE_1__ cpustat; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 TYPE_2__ FUNC5 (unsigned int) ; 

__attribute__((used)) static inline cputime64_t FUNC6(unsigned int cpu,
							cputime64_t *wall)
{
	cputime64_t idle_time;
	cputime64_t cur_wall_time;
	cputime64_t busy_time;

	cur_wall_time = FUNC3(FUNC2());
	busy_time = FUNC0(FUNC5(cpu).cpustat.user,
			FUNC5(cpu).cpustat.system);

	busy_time = FUNC0(busy_time, FUNC5(cpu).cpustat.irq);
	busy_time = FUNC0(busy_time, FUNC5(cpu).cpustat.softirq);
	busy_time = FUNC0(busy_time, FUNC5(cpu).cpustat.steal);
	busy_time = FUNC0(busy_time, FUNC5(cpu).cpustat.nice);

	idle_time = FUNC1(cur_wall_time, busy_time);
	if (wall)
		*wall = (cputime64_t)FUNC4(cur_wall_time);

	return (cputime64_t)FUNC4(idle_time);;
}