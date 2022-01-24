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
typedef  int u64 ;
struct hw_perf_event {int idx; int config_base; int /*<<< orphan*/  config; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct p4_event_bind {int /*<<< orphan*/  opcode; scalar_t__* escr_msr; } ;

/* Variables and functions */
 int P4_CCCR_ENABLE ; 
 int P4_CCCR_RESERVED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int P4_ESCR_EVENT_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 struct p4_event_bind* p4_event_bind_map ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct perf_event *event)
{
	struct hw_perf_event *hwc = &event->hw;
	int thread = FUNC8(hwc->config);
	u64 escr_conf = FUNC6(FUNC4(hwc->config));
	unsigned int idx = FUNC7(hwc->config);
	struct p4_event_bind *bind;
	u64 escr_addr, cccr;

	bind = &p4_event_bind_map[idx];
	escr_addr = (u64)bind->escr_msr[thread];

	/*
	 * - we dont support cascaded counters yet
	 * - and counter 1 is broken (erratum)
	 */
	FUNC2(FUNC9(hwc->config));
	FUNC2(hwc->idx == 1);

	/* we need a real Event value */
	escr_conf &= ~P4_ESCR_EVENT_MASK;
	escr_conf |= FUNC0(FUNC1(bind->opcode));

	cccr = FUNC5(hwc->config);

	/*
	 * it could be Cache event so we need to write metrics
	 * into additional MSRs
	 */
	FUNC10(hwc->config);

	(void)FUNC3(escr_addr, escr_conf);
	(void)FUNC3(hwc->config_base,
				(cccr & ~P4_CCCR_RESERVED) | P4_CCCR_ENABLE);
}