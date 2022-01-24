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
struct gru_thread_state {scalar_t__ ts_tlb_int_select; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int FUNC2 (struct gru_thread_state*) ; 
 int /*<<< orphan*/  grudev ; 

__attribute__((used)) static int FUNC3(struct gru_thread_state *gts)
{
	if (gts->ts_tlb_int_select < 0
	    || gts->ts_tlb_int_select == FUNC0())
		return 0;

	FUNC1(grudev, "retarget from %d to %d\n", gts->ts_tlb_int_select,
		FUNC0());
	return FUNC2(gts);
}