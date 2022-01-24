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
struct gru_thread_state {int ts_ctxnum; scalar_t__ ts_user_options; scalar_t__ ts_cch_req_slice; scalar_t__ ts_tlb_int_select; int /*<<< orphan*/  ts_dsr_map; int /*<<< orphan*/  ts_cbr_map; struct gru_state* ts_gru; int /*<<< orphan*/  ts_data_valid; int /*<<< orphan*/  ts_gdata; int /*<<< orphan*/  ts_sizeavail; } ;
struct gru_state {int /*<<< orphan*/  gs_gid; int /*<<< orphan*/  gs_gru_base_vaddr; } ;
struct gru_context_configuration_handle {int tfm_fault_bit_enable; int tlb_int_enable; int req_slice_set_enable; scalar_t__ req_slice; int tfm_done_bit_enable; int unmap_enable; int cb_int_enable; int* asid; int /*<<< orphan*/ * sizeavail; scalar_t__ tlb_int_select; int /*<<< orphan*/  cbr_allocation_map; int /*<<< orphan*/  dsr_allocation_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ GRU_OPT_MISS_FMM_INTR ; 
 scalar_t__ GRU_OPT_MISS_FMM_POLL ; 
 int FUNC1 (struct gru_context_configuration_handle*) ; 
 scalar_t__ FUNC2 (struct gru_context_configuration_handle*) ; 
 struct gru_context_configuration_handle* FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct gru_state*,struct gru_thread_state*) ; 
 int /*<<< orphan*/  grudev ; 
 scalar_t__ FUNC8 (struct gru_thread_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct gru_context_configuration_handle*) ; 
 int /*<<< orphan*/  FUNC10 (struct gru_context_configuration_handle*) ; 

void FUNC11(struct gru_thread_state *gts)
{
	struct gru_state *gru = gts->ts_gru;
	struct gru_context_configuration_handle *cch;
	int i, err, asid, ctxnum = gts->ts_ctxnum;

	cch = FUNC3(gru->gs_gru_base_vaddr, ctxnum);
	FUNC9(cch);
	cch->tfm_fault_bit_enable =
	    (gts->ts_user_options == GRU_OPT_MISS_FMM_POLL
	     || gts->ts_user_options == GRU_OPT_MISS_FMM_INTR);
	cch->tlb_int_enable = (gts->ts_user_options == GRU_OPT_MISS_FMM_INTR);
	if (cch->tlb_int_enable) {
		gts->ts_tlb_int_select = FUNC4();
		cch->tlb_int_select = gts->ts_tlb_int_select;
	}
	if (gts->ts_cch_req_slice >= 0) {
		cch->req_slice_set_enable = 1;
		cch->req_slice = gts->ts_cch_req_slice;
	} else {
		cch->req_slice_set_enable =0;
	}
	cch->tfm_done_bit_enable = 0;
	cch->dsr_allocation_map = gts->ts_dsr_map;
	cch->cbr_allocation_map = gts->ts_cbr_map;

	if (FUNC8(gts)) {
		cch->unmap_enable = 1;
		cch->tfm_done_bit_enable = 1;
		cch->cb_int_enable = 1;
		cch->tlb_int_select = 0;	/* For now, ints go to cpu 0 */
	} else {
		cch->unmap_enable = 0;
		cch->tfm_done_bit_enable = 0;
		cch->cb_int_enable = 0;
		asid = FUNC7(gru, gts);
		for (i = 0; i < 8; i++) {
			cch->asid[i] = asid + i;
			cch->sizeavail[i] = gts->ts_sizeavail;
		}
	}

	err = FUNC1(cch);
	if (err) {
		FUNC5(grudev,
			"err %d: cch %p, gts %p, cbr 0x%lx, dsr 0x%lx\n",
			err, cch, gts, gts->ts_cbr_map, gts->ts_dsr_map);
		FUNC0();
	}

	FUNC6(gts->ts_gdata, gru->gs_gru_base_vaddr, ctxnum,
			gts->ts_cbr_map, gts->ts_dsr_map, gts->ts_data_valid);

	if (FUNC2(cch))
		FUNC0();
	FUNC10(cch);

	FUNC5(grudev, "gid %d, gts %p, cbrmap 0x%lx, dsrmap 0x%lx, tie %d, tis %d\n",
		gts->ts_gru->gs_gid, gts, gts->ts_cbr_map, gts->ts_dsr_map,
		(gts->ts_user_options == GRU_OPT_MISS_FMM_INTR), gts->ts_tlb_int_select);
}