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
struct pmu {int dummy; } ;
struct perf_event {int dummy; } ;

/* Variables and functions */
 struct pmu const* FUNC0 (int) ; 
 int FUNC1 (struct perf_event*) ; 
 struct pmu const pmu ; 

const struct pmu *FUNC2(struct perf_event *event)
{
	int err = FUNC1(event);

	if (err)
		return FUNC0(err);
	return &pmu;
}