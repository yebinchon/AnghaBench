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
struct msix_entry {int dummy; } ;
struct bnx2x_sp_objs {int dummy; } ;
struct bnx2x_ilt {int dummy; } ;
struct bnx2x_fp_txdata {int dummy; } ;
struct bnx2x_fp_stats {int dummy; } ;
struct bnx2x_fastpath {void* tpa_info; } ;
struct bnx2x_agg_info {int dummy; } ;
struct bnx2x {int igu_sb_cnt; int fp_array_size; struct bnx2x_ilt* ilt; struct msix_entry* msix_table; void* bnx2x_txq; void* fp_stats; void* sp_objs; struct bnx2x_fastpath* fp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct bnx2x*) ; 
 int BNX2X_MULTI_TX_COS ; 
 int FUNC2 (struct bnx2x*) ; 
 int ENOMEM ; 
 int ETH_MAX_AGGREGATION_QUEUES_E1H_E2 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*) ; 
 void* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 struct bnx2x_ilt* FUNC6 (int,int /*<<< orphan*/ ) ; 

int FUNC7(struct bnx2x *bp)
{
	struct bnx2x_fastpath *fp;
	struct msix_entry *tbl;
	struct bnx2x_ilt *ilt;
	int msix_table_size = 0;
	int fp_array_size, txq_array_size;
	int i;

	/*
	 * The biggest MSI-X table we might need is as a maximum number of fast
	 * path IGU SBs plus default SB (for PF only).
	 */
	msix_table_size = bp->igu_sb_cnt;
	if (FUNC3(bp))
		msix_table_size++;
	FUNC0("msix_table_size %d\n", msix_table_size);

	/* fp array: RSS plus CNIC related L2 queues */
	fp_array_size = FUNC1(bp) + FUNC2(bp);
	bp->fp_array_size = fp_array_size;
	FUNC0("fp_array_size %d\n", bp->fp_array_size);

	fp = FUNC5(bp->fp_array_size, sizeof(*fp), GFP_KERNEL);
	if (!fp)
		goto alloc_err;
	for (i = 0; i < bp->fp_array_size; i++) {
		fp[i].tpa_info =
			FUNC5(ETH_MAX_AGGREGATION_QUEUES_E1H_E2,
				sizeof(struct bnx2x_agg_info), GFP_KERNEL);
		if (!(fp[i].tpa_info))
			goto alloc_err;
	}

	bp->fp = fp;

	/* allocate sp objs */
	bp->sp_objs = FUNC5(bp->fp_array_size, sizeof(struct bnx2x_sp_objs),
			      GFP_KERNEL);
	if (!bp->sp_objs)
		goto alloc_err;

	/* allocate fp_stats */
	bp->fp_stats = FUNC5(bp->fp_array_size, sizeof(struct bnx2x_fp_stats),
			       GFP_KERNEL);
	if (!bp->fp_stats)
		goto alloc_err;

	/* Allocate memory for the transmission queues array */
	txq_array_size =
		FUNC1(bp) * BNX2X_MULTI_TX_COS + FUNC2(bp);
	FUNC0("txq_array_size %d", txq_array_size);

	bp->bnx2x_txq = FUNC5(txq_array_size, sizeof(struct bnx2x_fp_txdata),
				GFP_KERNEL);
	if (!bp->bnx2x_txq)
		goto alloc_err;

	/* msix table */
	tbl = FUNC5(msix_table_size, sizeof(*tbl), GFP_KERNEL);
	if (!tbl)
		goto alloc_err;
	bp->msix_table = tbl;

	/* ilt */
	ilt = FUNC6(sizeof(*ilt), GFP_KERNEL);
	if (!ilt)
		goto alloc_err;
	bp->ilt = ilt;

	return 0;
alloc_err:
	FUNC4(bp);
	return -ENOMEM;
}