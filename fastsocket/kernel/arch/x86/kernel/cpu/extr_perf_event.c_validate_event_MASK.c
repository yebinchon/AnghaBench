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
struct perf_event {int dummy; } ;
struct event_constraint {int /*<<< orphan*/  weight; } ;
struct cpu_hw_events {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* put_event_constraints ) (struct cpu_hw_events*,struct perf_event*) ;struct event_constraint* (* get_event_constraints ) (struct cpu_hw_events*,struct perf_event*) ;} ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ FUNC0 (struct cpu_hw_events*) ; 
 int FUNC1 (struct cpu_hw_events*) ; 
 struct cpu_hw_events* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct cpu_hw_events*) ; 
 struct event_constraint* FUNC4 (struct cpu_hw_events*,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC5 (struct cpu_hw_events*,struct perf_event*) ; 
 TYPE_1__ x86_pmu ; 

__attribute__((used)) static int FUNC6(struct perf_event *event)
{
	struct cpu_hw_events *fake_cpuc;
	struct event_constraint *c;
	int ret = 0;

	fake_cpuc = FUNC2();
	if (FUNC0(fake_cpuc))
		return FUNC1(fake_cpuc);

	c = x86_pmu.get_event_constraints(fake_cpuc, event);

	if (!c || !c->weight)
		ret = -ENOSPC;

	if (x86_pmu.put_event_constraints)
		x86_pmu.put_event_constraints(fake_cpuc, event);

	FUNC3(fake_cpuc);

	return ret;
}