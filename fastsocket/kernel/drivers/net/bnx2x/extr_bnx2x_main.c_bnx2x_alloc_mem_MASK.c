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
typedef  union cdu_context {int dummy; } cdu_context ;
struct ilt_line {int dummy; } ;
struct host_sp_status_block {int dummy; } ;
struct bnx2x_slowpath {int dummy; } ;
struct bnx2x {int /*<<< orphan*/  eq_mapping; int /*<<< orphan*/  eq_ring; int /*<<< orphan*/  spq_mapping; int /*<<< orphan*/  spq; TYPE_2__* ilt; TYPE_1__* context; int /*<<< orphan*/  slowpath_mapping; int /*<<< orphan*/  slowpath; int /*<<< orphan*/  def_status_blk_mapping; int /*<<< orphan*/  def_status_blk; int /*<<< orphan*/  t2_mapping; int /*<<< orphan*/  t2; } ;
struct TYPE_4__ {int /*<<< orphan*/  lines; } ;
struct TYPE_3__ {int size; int /*<<< orphan*/  cxt_mapping; int /*<<< orphan*/  vcxt; } ;

/* Variables and functions */
 int BCM_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  CDU_ILT_PAGE_SZ ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*) ; 
 int ENOMEM ; 
 int ILT_MAX_LINES ; 
 int /*<<< orphan*/  ILT_MEMOP_ALLOC ; 
 int NUM_EQ_PAGES ; 
 int SRC_T2_SZ ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*) ; 
 scalar_t__ FUNC6 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct bnx2x*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 

int FUNC9(struct bnx2x *bp)
{
	int i, allocated, context_size;

	if (!FUNC4(bp) && !bp->t2)
		/* allocate searcher T2 table */
		FUNC3(bp->t2, &bp->t2_mapping, SRC_T2_SZ);

	FUNC3(bp->def_status_blk, &bp->def_status_blk_mapping,
			sizeof(struct host_sp_status_block));

	FUNC3(bp->slowpath, &bp->slowpath_mapping,
			sizeof(struct bnx2x_slowpath));

	/* Allocate memory for CDU context:
	 * This memory is allocated separately and not in the generic ILT
	 * functions because CDU differs in few aspects:
	 * 1. There are multiple entities allocating memory for context -
	 * 'regular' driver, CNIC and SRIOV driver. Each separately controls
	 * its own ILT lines.
	 * 2. Since CDU page-size is not a single 4KB page (which is the case
	 * for the other ILT clients), to be efficient we want to support
	 * allocation of sub-page-size in the last entry.
	 * 3. Context pointers are used by the driver to pass to FW / update
	 * the context (for the other ILT clients the pointers are used just to
	 * free the memory during unload).
	 */
	context_size = sizeof(union cdu_context) * FUNC2(bp);

	for (i = 0, allocated = 0; allocated < context_size; i++) {
		bp->context[i].size = FUNC8(CDU_ILT_PAGE_SZ,
					  (context_size - allocated));
		FUNC3(bp->context[i].vcxt,
				&bp->context[i].cxt_mapping,
				bp->context[i].size);
		allocated += bp->context[i].size;
	}
	FUNC0(bp->ilt->lines, sizeof(struct ilt_line) * ILT_MAX_LINES);

	if (FUNC6(bp, ILT_MEMOP_ALLOC))
		goto alloc_mem_err;

	if (FUNC7(bp))
		goto alloc_mem_err;

	/* Slow path ring */
	FUNC3(bp->spq, &bp->spq_mapping, BCM_PAGE_SIZE);

	/* EQ */
	FUNC3(bp->eq_ring, &bp->eq_mapping,
			BCM_PAGE_SIZE * NUM_EQ_PAGES);

	return 0;

alloc_mem_err:
	FUNC5(bp);
	FUNC1("Can't allocate memory\n");
	return -ENOMEM;
}