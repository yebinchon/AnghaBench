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
struct hw_perf_event_extra {int idx; scalar_t__ alloc; } ;
struct TYPE_2__ {struct hw_perf_event_extra extra_reg; } ;
struct perf_event {TYPE_1__ hw; } ;
struct intel_uncore_extra_reg {int /*<<< orphan*/  ref; } ;
struct intel_uncore_box {struct intel_uncore_extra_reg* shared_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct intel_uncore_box*) ; 

__attribute__((used)) static void FUNC3(struct intel_uncore_box *box, struct perf_event *event)
{
	struct intel_uncore_extra_reg *er;
	struct hw_perf_event_extra *reg1 = &event->hw.extra_reg;
	int idx, er_idx;

	if (FUNC2(box) || !reg1->alloc)
		return;

	idx = reg1->idx % 6;
	er_idx = idx;
	if (er_idx > 2)
		er_idx--;
	er_idx += (reg1->idx / 6) * 5;

	er = &box->shared_regs[er_idx];
	if (idx == 2 || idx == 3)
		FUNC1(1 << ((idx - 2) * 8), &er->ref);
	else
		FUNC0(&er->ref);

	reg1->alloc = 0;
}