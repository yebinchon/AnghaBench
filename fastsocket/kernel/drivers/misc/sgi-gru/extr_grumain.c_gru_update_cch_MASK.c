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
struct gru_thread_state {int ts_ctxnum; scalar_t__ ts_user_options; void* ts_tlb_int_select; int /*<<< orphan*/  ts_sizeavail; struct gru_state* ts_gru; } ;
struct gru_state {struct gru_thread_state** gs_gts; int /*<<< orphan*/  gs_gru_base_vaddr; } ;
struct gru_context_configuration_handle {scalar_t__ state; int tfm_fault_bit_enable; void* tlb_int_select; int /*<<< orphan*/ * sizeavail; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ CCHSTATE_ACTIVE ; 
 scalar_t__ GRU_OPT_MISS_FMM_INTR ; 
 scalar_t__ GRU_OPT_MISS_FMM_POLL ; 
 scalar_t__ FUNC1 (struct gru_context_configuration_handle*) ; 
 scalar_t__ FUNC2 (struct gru_context_configuration_handle*) ; 
 struct gru_context_configuration_handle* FUNC3 (int /*<<< orphan*/ ,int) ; 
 void* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct gru_context_configuration_handle*) ; 
 int /*<<< orphan*/  FUNC6 (struct gru_context_configuration_handle*) ; 

int FUNC7(struct gru_thread_state *gts)
{
	struct gru_context_configuration_handle *cch;
	struct gru_state *gru = gts->ts_gru;
	int i, ctxnum = gts->ts_ctxnum, ret = 0;

	cch = FUNC3(gru->gs_gru_base_vaddr, ctxnum);

	FUNC5(cch);
	if (cch->state == CCHSTATE_ACTIVE) {
		if (gru->gs_gts[gts->ts_ctxnum] != gts)
			goto exit;
		if (FUNC1(cch))
			FUNC0();
		for (i = 0; i < 8; i++)
			cch->sizeavail[i] = gts->ts_sizeavail;
		gts->ts_tlb_int_select = FUNC4();
		cch->tlb_int_select = FUNC4();
		cch->tfm_fault_bit_enable =
		  (gts->ts_user_options == GRU_OPT_MISS_FMM_POLL
		    || gts->ts_user_options == GRU_OPT_MISS_FMM_INTR);
		if (FUNC2(cch))
			FUNC0();
		ret = 1;
	}
exit:
	FUNC6(cch);
	return ret;
}