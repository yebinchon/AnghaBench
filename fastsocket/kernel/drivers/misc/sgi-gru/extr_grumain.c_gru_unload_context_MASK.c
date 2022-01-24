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
struct gru_thread_state {int ts_ctxnum; int ts_data_valid; int /*<<< orphan*/  ts_dsr_map; int /*<<< orphan*/  ts_cbr_map; int /*<<< orphan*/  ts_gdata; int /*<<< orphan*/  ts_vma; struct gru_state* ts_gru; } ;
struct gru_state {int /*<<< orphan*/  gs_gru_base_vaddr; } ;
struct gru_context_configuration_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GRU_GSEG_PAGESIZE ; 
 int /*<<< orphan*/  FUNC1 (struct gru_thread_state*) ; 
 scalar_t__ FUNC2 (struct gru_context_configuration_handle*) ; 
 scalar_t__ FUNC3 (struct gru_context_configuration_handle*) ; 
 struct gru_context_configuration_handle* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct gru_thread_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gru_thread_state*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct gru_state*,struct gru_thread_state*) ; 
 int /*<<< orphan*/  grudev ; 
 int /*<<< orphan*/  FUNC9 (struct gru_thread_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct gru_context_configuration_handle*) ; 
 int /*<<< orphan*/  FUNC11 (struct gru_context_configuration_handle*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC13(struct gru_thread_state *gts, int savestate)
{
	struct gru_state *gru = gts->ts_gru;
	struct gru_context_configuration_handle *cch;
	int ctxnum = gts->ts_ctxnum;

	if (!FUNC9(gts))
		FUNC12(gts->ts_vma, FUNC1(gts), GRU_GSEG_PAGESIZE);
	cch = FUNC4(gru->gs_gru_base_vaddr, ctxnum);

	FUNC5(grudev, "gts %p, cbrmap 0x%lx, dsrmap 0x%lx\n",
		gts, gts->ts_cbr_map, gts->ts_dsr_map);
	FUNC10(cch);
	if (FUNC3(cch))
		FUNC0();

	if (!FUNC9(gts))
		FUNC8(gru, gts);
	if (savestate) {
		FUNC7(gts->ts_gdata, gru->gs_gru_base_vaddr,
					ctxnum, gts->ts_cbr_map,
					gts->ts_dsr_map);
		gts->ts_data_valid = 1;
	}

	if (FUNC2(cch))
		FUNC0();
	FUNC11(cch);

	FUNC6(gts);
}