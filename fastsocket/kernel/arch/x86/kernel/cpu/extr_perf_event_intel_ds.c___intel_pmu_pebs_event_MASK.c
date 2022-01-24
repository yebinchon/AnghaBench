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
struct pt_regs {int /*<<< orphan*/  flags; int /*<<< orphan*/  sp; int /*<<< orphan*/  bp; int /*<<< orphan*/  ip; } ;
struct perf_sample_data {int /*<<< orphan*/  period; } ;
struct TYPE_4__ {int precise_ip; } ;
struct TYPE_3__ {int /*<<< orphan*/  last_period; } ;
struct perf_event {TYPE_2__ attr; TYPE_1__ hw; } ;
struct pebs_record_core {int /*<<< orphan*/  sp; int /*<<< orphan*/  bp; int /*<<< orphan*/  ip; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_EFLAGS_EXACT ; 
 scalar_t__ FUNC0 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 scalar_t__ FUNC2 (struct perf_event*,struct perf_sample_data*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_sample_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct perf_event *event,
				   struct pt_regs *iregs, void *__pebs)
{
	/*
	 * We cast to pebs_record_core since that is a subset of
	 * both formats and we don't use the other fields in this
	 * routine.
	 */
	struct pebs_record_core *pebs = __pebs;
	struct perf_sample_data data;
	struct pt_regs regs;

	if (!FUNC1(event))
		return;

	FUNC3(&data, 0);
	data.period = event->hw.last_period;

	/*
	 * We use the interrupt regs as a base because the PEBS record
	 * does not contain a full regs set, specifically it seems to
	 * lack segment descriptors, which get used by things like
	 * user_mode().
	 *
	 * In the simple case fix up only the IP and BP,SP regs, for
	 * PERF_SAMPLE_IP and PERF_SAMPLE_CALLCHAIN to function properly.
	 * A possible PERF_SAMPLE_REGS will have to transfer all regs.
	 */
	regs = *iregs;
	regs.ip = pebs->ip;
	regs.bp = pebs->bp;
	regs.sp = pebs->sp;

	if (event->attr.precise_ip > 1 && FUNC0(&regs))
		regs.flags |= PERF_EFLAGS_EXACT;
	else
		regs.flags &= ~PERF_EFLAGS_EXACT;

	if (FUNC2(event, &data, &regs))
		FUNC4(event, 0);
}