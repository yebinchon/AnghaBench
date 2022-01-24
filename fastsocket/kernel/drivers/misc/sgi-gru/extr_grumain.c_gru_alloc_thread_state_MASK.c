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
struct vm_area_struct {struct gru_vma_data* vm_private_data; } ;
struct gru_vma_data {int /*<<< orphan*/  vd_lock; int /*<<< orphan*/  vd_head; int /*<<< orphan*/  vd_user_options; int /*<<< orphan*/  vd_tlb_preload_count; int /*<<< orphan*/  vd_dsr_au_count; int /*<<< orphan*/  vd_cbr_au_count; } ;
struct gru_thread_state {int /*<<< orphan*/  ts_next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct gru_thread_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct gru_thread_state* FUNC2 (struct vm_area_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct vm_area_struct*,struct gru_thread_state*) ; 
 struct gru_thread_state* FUNC4 (struct gru_vma_data*,int) ; 
 int /*<<< orphan*/  grudev ; 
 int /*<<< orphan*/  gts_double_allocate ; 
 int /*<<< orphan*/  FUNC5 (struct gru_thread_state*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

struct gru_thread_state *FUNC9(struct vm_area_struct *vma,
					int tsid)
{
	struct gru_vma_data *vdata = vma->vm_private_data;
	struct gru_thread_state *gts, *ngts;

	gts = FUNC2(vma, vdata->vd_cbr_au_count,
			    vdata->vd_dsr_au_count,
			    vdata->vd_tlb_preload_count,
			    vdata->vd_user_options, tsid);
	if (FUNC0(gts))
		return gts;

	FUNC7(&vdata->vd_lock);
	ngts = FUNC4(vdata, tsid);
	if (ngts) {
		FUNC5(gts);
		gts = ngts;
		FUNC1(gts_double_allocate);
	} else {
		FUNC6(&gts->ts_next, &vdata->vd_head);
	}
	FUNC8(&vdata->vd_lock);
	FUNC3(grudev, "vma %p, gts %p\n", vma, gts);
	return gts;
}