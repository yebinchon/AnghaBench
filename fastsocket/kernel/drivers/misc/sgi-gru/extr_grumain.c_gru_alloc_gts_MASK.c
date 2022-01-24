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
struct vm_area_struct {int dummy; } ;
struct gru_thread_state {int ts_cbr_au_count; int ts_dsr_au_count; unsigned char ts_tlb_preload_count; int ts_user_options; int ts_user_blade_id; int ts_user_chiplet_id; int ts_tsid; int ts_tlb_int_select; int ts_cch_req_slice; struct gru_mm_struct* ts_gms; struct vm_area_struct* ts_vma; int /*<<< orphan*/  ts_mm; int /*<<< orphan*/  ts_sizeavail; int /*<<< orphan*/  ts_ctxnum; int /*<<< orphan*/  ts_ctxlock; int /*<<< orphan*/  ts_refcnt; } ;
struct gru_mm_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct gru_thread_state* FUNC2 (struct gru_mm_struct*) ; 
 struct gru_thread_state* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct gru_mm_struct*) ; 
 int /*<<< orphan*/  NULLCTX ; 
 int /*<<< orphan*/  PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,struct gru_thread_state*) ; 
 struct gru_mm_struct* FUNC9 () ; 
 int /*<<< orphan*/  grudev ; 
 int /*<<< orphan*/  gts_alloc ; 
 int /*<<< orphan*/  FUNC10 (struct gru_thread_state*) ; 
 struct gru_thread_state* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct gru_thread_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

struct gru_thread_state *FUNC14(struct vm_area_struct *vma,
		int cbr_au_count, int dsr_au_count,
		unsigned char tlb_preload_count, int options, int tsid)
{
	struct gru_thread_state *gts;
	struct gru_mm_struct *gms;
	int bytes;

	bytes = FUNC1(dsr_au_count) + FUNC0(cbr_au_count);
	bytes += sizeof(struct gru_thread_state);
	gts = FUNC11(bytes, GFP_KERNEL);
	if (!gts)
		return FUNC3(-ENOMEM);

	FUNC6(gts_alloc);
	FUNC12(gts, 0, sizeof(struct gru_thread_state)); /* zero out header */
	FUNC7(&gts->ts_refcnt, 1);
	FUNC13(&gts->ts_ctxlock);
	gts->ts_cbr_au_count = cbr_au_count;
	gts->ts_dsr_au_count = dsr_au_count;
	gts->ts_tlb_preload_count = tlb_preload_count;
	gts->ts_user_options = options;
	gts->ts_user_blade_id = -1;
	gts->ts_user_chiplet_id = -1;
	gts->ts_tsid = tsid;
	gts->ts_ctxnum = NULLCTX;
	gts->ts_tlb_int_select = -1;
	gts->ts_cch_req_slice = -1;
	gts->ts_sizeavail = FUNC4(PAGE_SHIFT);
	if (vma) {
		gts->ts_mm = current->mm;
		gts->ts_vma = vma;
		gms = FUNC9();
		if (FUNC5(gms))
			goto err;
		gts->ts_gms = gms;
	}

	FUNC8(grudev, "alloc gts %p\n", gts);
	return gts;

err:
	FUNC10(gts);
	return FUNC2(gms);
}