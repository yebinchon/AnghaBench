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
struct perf_event {int dummy; } ;
struct intel_uncore_box {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 struct intel_uncore_box* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct intel_uncore_box *FUNC3(struct perf_event *event)
{
	/*
	 * perf core schedules event on the basis of cpu, uncore events are
	 * collected by one of the cpus inside a physical package.
	 */
	return FUNC2(FUNC1(event), FUNC0());
}