#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct mthca_init_hca_param {int /*<<< orphan*/  mc_base; int /*<<< orphan*/  srqc_base; int /*<<< orphan*/  cqc_base; int /*<<< orphan*/  rdb_base; int /*<<< orphan*/  eqpc_base; int /*<<< orphan*/  qpc_base; int /*<<< orphan*/  mpt_base; int /*<<< orphan*/  mtt_base; int /*<<< orphan*/  eqc_base; } ;
struct mthca_dev_lim {int mpt_entry_sz; int qpc_entry_sz; int eqpc_entry_sz; int cqc_entry_sz; int srq_entry_sz; } ;
struct TYPE_10__ {int /*<<< orphan*/  aux_icm; } ;
struct TYPE_11__ {TYPE_2__ arbel; } ;
struct TYPE_12__ {void* mtt_table; void* mpt_table; } ;
struct TYPE_13__ {int rdb_shift; void* qp_table; void* eqp_table; void* rdb_table; } ;
struct TYPE_14__ {void* table; } ;
struct TYPE_16__ {void* table; } ;
struct TYPE_9__ {void* table; } ;
struct TYPE_15__ {int reserved_mtts; int mtt_seg_size; int num_mtt_segs; int num_mpts; int reserved_mrws; int num_qps; int reserved_qps; int num_cqs; int reserved_cqs; int num_srqs; int reserved_srqs; int num_mgms; int num_amgms; } ;
struct mthca_dev {int mthca_flags; TYPE_3__ fw; TYPE_4__ mr_table; TYPE_5__ qp_table; TYPE_6__ cq_table; TYPE_8__ srq_table; TYPE_1__ mcg_table; TYPE_7__ limits; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int GFP_HIGHUSER ; 
 int MTHCA_FLAG_SRQ ; 
 int MTHCA_MGM_ENTRY_SIZE ; 
 int MTHCA_RDB_ENTRY_SIZE ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct mthca_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mthca_dev*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mthca_dev*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct mthca_dev*,int /*<<< orphan*/ ,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mthca_dev*,char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC8 (struct mthca_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct mthca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mthca_dev*,void*) ; 
 int FUNC11 (struct mthca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mthca_dev*) ; 

__attribute__((used)) static int FUNC13(struct mthca_dev *mdev,
			  struct mthca_dev_lim *dev_lim,
			  struct mthca_init_hca_param *init_hca,
			  u64 icm_size)
{
	u64 aux_pages;
	int err;

	err = FUNC3(mdev, icm_size, &aux_pages);
	if (err) {
		FUNC8(mdev, "SET_ICM_SIZE command returned %d, aborting.\n", err);
		return err;
	}

	FUNC7(mdev, "%lld KB of HCA context requires %lld KB aux memory.\n",
		  (unsigned long long) icm_size >> 10,
		  (unsigned long long) aux_pages << 2);

	mdev->fw.arbel.aux_icm = FUNC5(mdev, aux_pages,
						 GFP_HIGHUSER | __GFP_NOWARN, 0);
	if (!mdev->fw.arbel.aux_icm) {
		FUNC8(mdev, "Couldn't allocate aux memory, aborting.\n");
		return -ENOMEM;
	}

	err = FUNC2(mdev, mdev->fw.arbel.aux_icm);
	if (err) {
		FUNC8(mdev, "MAP_ICM_AUX returned %d, aborting.\n", err);
		goto err_free_aux;
	}

	err = FUNC11(mdev, init_hca->eqc_base);
	if (err) {
		FUNC8(mdev, "Failed to map EQ context memory, aborting.\n");
		goto err_unmap_aux;
	}

	/* CPU writes to non-reserved MTTs, while HCA might DMA to reserved mtts */
	mdev->limits.reserved_mtts = FUNC0(mdev->limits.reserved_mtts * mdev->limits.mtt_seg_size,
					   FUNC1()) / mdev->limits.mtt_seg_size;

	mdev->mr_table.mtt_table = FUNC6(mdev, init_hca->mtt_base,
							 mdev->limits.mtt_seg_size,
							 mdev->limits.num_mtt_segs,
							 mdev->limits.reserved_mtts,
							 1, 0);
	if (!mdev->mr_table.mtt_table) {
		FUNC8(mdev, "Failed to map MTT context memory, aborting.\n");
		err = -ENOMEM;
		goto err_unmap_eq;
	}

	mdev->mr_table.mpt_table = FUNC6(mdev, init_hca->mpt_base,
							 dev_lim->mpt_entry_sz,
							 mdev->limits.num_mpts,
							 mdev->limits.reserved_mrws,
							 1, 1);
	if (!mdev->mr_table.mpt_table) {
		FUNC8(mdev, "Failed to map MPT context memory, aborting.\n");
		err = -ENOMEM;
		goto err_unmap_mtt;
	}

	mdev->qp_table.qp_table = FUNC6(mdev, init_hca->qpc_base,
							dev_lim->qpc_entry_sz,
							mdev->limits.num_qps,
							mdev->limits.reserved_qps,
							0, 0);
	if (!mdev->qp_table.qp_table) {
		FUNC8(mdev, "Failed to map QP context memory, aborting.\n");
		err = -ENOMEM;
		goto err_unmap_mpt;
	}

	mdev->qp_table.eqp_table = FUNC6(mdev, init_hca->eqpc_base,
							 dev_lim->eqpc_entry_sz,
							 mdev->limits.num_qps,
							 mdev->limits.reserved_qps,
							 0, 0);
	if (!mdev->qp_table.eqp_table) {
		FUNC8(mdev, "Failed to map EQP context memory, aborting.\n");
		err = -ENOMEM;
		goto err_unmap_qp;
	}

	mdev->qp_table.rdb_table = FUNC6(mdev, init_hca->rdb_base,
							 MTHCA_RDB_ENTRY_SIZE,
							 mdev->limits.num_qps <<
							 mdev->qp_table.rdb_shift, 0,
							 0, 0);
	if (!mdev->qp_table.rdb_table) {
		FUNC8(mdev, "Failed to map RDB context memory, aborting\n");
		err = -ENOMEM;
		goto err_unmap_eqp;
	}

       mdev->cq_table.table = FUNC6(mdev, init_hca->cqc_base,
						    dev_lim->cqc_entry_sz,
						    mdev->limits.num_cqs,
						    mdev->limits.reserved_cqs,
						    0, 0);
	if (!mdev->cq_table.table) {
		FUNC8(mdev, "Failed to map CQ context memory, aborting.\n");
		err = -ENOMEM;
		goto err_unmap_rdb;
	}

	if (mdev->mthca_flags & MTHCA_FLAG_SRQ) {
		mdev->srq_table.table =
			FUNC6(mdev, init_hca->srqc_base,
					      dev_lim->srq_entry_sz,
					      mdev->limits.num_srqs,
					      mdev->limits.reserved_srqs,
					      0, 0);
		if (!mdev->srq_table.table) {
			FUNC8(mdev, "Failed to map SRQ context memory, "
				  "aborting.\n");
			err = -ENOMEM;
			goto err_unmap_cq;
		}
	}

	/*
	 * It's not strictly required, but for simplicity just map the
	 * whole multicast group table now.  The table isn't very big
	 * and it's a lot easier than trying to track ref counts.
	 */
	mdev->mcg_table.table = FUNC6(mdev, init_hca->mc_base,
						      MTHCA_MGM_ENTRY_SIZE,
						      mdev->limits.num_mgms +
						      mdev->limits.num_amgms,
						      mdev->limits.num_mgms +
						      mdev->limits.num_amgms,
						      0, 0);
	if (!mdev->mcg_table.table) {
		FUNC8(mdev, "Failed to map MCG context memory, aborting.\n");
		err = -ENOMEM;
		goto err_unmap_srq;
	}

	return 0;

err_unmap_srq:
	if (mdev->mthca_flags & MTHCA_FLAG_SRQ)
		FUNC10(mdev, mdev->srq_table.table);

err_unmap_cq:
	FUNC10(mdev, mdev->cq_table.table);

err_unmap_rdb:
	FUNC10(mdev, mdev->qp_table.rdb_table);

err_unmap_eqp:
	FUNC10(mdev, mdev->qp_table.eqp_table);

err_unmap_qp:
	FUNC10(mdev, mdev->qp_table.qp_table);

err_unmap_mpt:
	FUNC10(mdev, mdev->mr_table.mpt_table);

err_unmap_mtt:
	FUNC10(mdev, mdev->mr_table.mtt_table);

err_unmap_eq:
	FUNC12(mdev);

err_unmap_aux:
	FUNC4(mdev);

err_free_aux:
	FUNC9(mdev, mdev->fw.arbel.aux_icm, 0);

	return err;
}