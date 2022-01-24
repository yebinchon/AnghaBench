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
struct hw_perf_event {int idx; int /*<<< orphan*/  event_base; int /*<<< orphan*/  config_base; scalar_t__ last_tag; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct intel_uncore_box {scalar_t__* tags; } ;

/* Variables and functions */
 int UNCORE_PMC_IDX_FIXED ; 
 int /*<<< orphan*/  FUNC0 (struct intel_uncore_box*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_uncore_box*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_uncore_box*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_uncore_box*,int) ; 

__attribute__((used)) static void FUNC4(struct intel_uncore_box *box, struct perf_event *event, int idx)
{
	struct hw_perf_event *hwc = &event->hw;

	hwc->idx = idx;
	hwc->last_tag = ++box->tags[idx];

	if (hwc->idx == UNCORE_PMC_IDX_FIXED) {
		hwc->event_base = FUNC2(box);
		hwc->config_base = FUNC1(box);
		return;
	}

	hwc->config_base = FUNC0(box, hwc->idx);
	hwc->event_base  = FUNC3(box, hwc->idx);
}