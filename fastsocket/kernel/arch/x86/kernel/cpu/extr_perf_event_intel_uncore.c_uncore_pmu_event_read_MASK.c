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
 struct intel_uncore_box* FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_uncore_box*,struct perf_event*) ; 

__attribute__((used)) static void FUNC2(struct perf_event *event)
{
	struct intel_uncore_box *box = FUNC0(event);
	FUNC1(box, event);
}