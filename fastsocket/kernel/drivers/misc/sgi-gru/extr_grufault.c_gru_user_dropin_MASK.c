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
struct gru_tlb_fault_handle {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  upm_tlbmiss; } ;
struct gru_thread_state {int /*<<< orphan*/  ts_gru; TYPE_1__ ustats; struct gru_mm_struct* ts_gms; } ;
struct gru_mm_struct {int /*<<< orphan*/  ms_range_active; int /*<<< orphan*/  ms_wait_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  call_os_wait_queue ; 
 int FUNC2 (int /*<<< orphan*/ ,struct gru_thread_state*,struct gru_tlb_fault_handle*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct gru_tlb_fault_handle*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct gru_thread_state *gts,
			   struct gru_tlb_fault_handle *tfh,
			   void *cb)
{
	struct gru_mm_struct *gms = gts->ts_gms;
	int ret;

	gts->ustats.upm_tlbmiss++;
	while (1) {
		FUNC4(gms->ms_wait_queue,
			   FUNC1(&gms->ms_range_active) == 0);
		FUNC3(tfh);	/* Helps on hdw, required for emulator */
		ret = FUNC2(gts->ts_gru, gts, tfh, cb);
		if (ret <= 0)
			return ret;
		FUNC0(call_os_wait_queue);
	}
}