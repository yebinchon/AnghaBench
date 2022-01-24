#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct TYPE_13__ {int /*<<< orphan*/  aux_icm; } ;
struct TYPE_17__ {int rdmarc_shift; int /*<<< orphan*/  cmpt_table; int /*<<< orphan*/  qp_table; int /*<<< orphan*/  auxc_table; int /*<<< orphan*/  altc_table; int /*<<< orphan*/  rdmarc_table; } ;
struct TYPE_12__ {int /*<<< orphan*/  cmpt_table; int /*<<< orphan*/  table; } ;
struct TYPE_11__ {int /*<<< orphan*/  cmpt_table; int /*<<< orphan*/  table; } ;
struct TYPE_15__ {int /*<<< orphan*/  cmpt_table; int /*<<< orphan*/  table; } ;
struct TYPE_16__ {int /*<<< orphan*/  mtt_table; int /*<<< orphan*/  dmpt_table; } ;
struct TYPE_10__ {int /*<<< orphan*/  table; } ;
struct mlx4_priv {TYPE_4__ fw; TYPE_8__ qp_table; TYPE_3__ srq_table; TYPE_2__ cq_table; TYPE_6__ eq_table; TYPE_7__ mr_table; TYPE_1__ mcg_table; } ;
struct mlx4_init_hca_param {int /*<<< orphan*/  mc_base; int /*<<< orphan*/  srqc_base; int /*<<< orphan*/  cqc_base; int /*<<< orphan*/  rdmarc_base; int /*<<< orphan*/  altc_base; int /*<<< orphan*/  auxc_base; int /*<<< orphan*/  qpc_base; int /*<<< orphan*/  dmpt_base; int /*<<< orphan*/  mtt_base; int /*<<< orphan*/  eqc_base; int /*<<< orphan*/  cmpt_base; } ;
struct mlx4_dev_cap {int eqc_entry_sz; int dmpt_entry_sz; int qpc_entry_sz; int aux_entry_sz; int altc_entry_sz; int rdmarc_entry_sz; int cqc_entry_sz; int srq_entry_sz; int /*<<< orphan*/  cmpt_entry_sz; } ;
struct TYPE_18__ {int num_eqs; int reserved_mtts; int mtt_entry_sz; int num_mtts; int num_mpts; int reserved_mrws; int num_qps; int* reserved_qps_cnt; int num_cqs; int reserved_cqs; int num_srqs; int reserved_srqs; int num_mgms; int num_amgms; } ;
struct TYPE_14__ {int num_phys_eqs; } ;
struct mlx4_dev {TYPE_9__ caps; TYPE_5__ phys_caps; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int GFP_HIGHUSER ; 
 size_t MLX4_QP_REGION_FW ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct mlx4_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlx4_dev*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_dev*,char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_dev*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct mlx4_dev*) ; 
 int FUNC11 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct mlx4_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int,int) ; 
 scalar_t__ FUNC13 (struct mlx4_dev*) ; 
 struct mlx4_priv* FUNC14 (struct mlx4_dev*) ; 

__attribute__((used)) static int FUNC15(struct mlx4_dev *dev, struct mlx4_dev_cap *dev_cap,
			 struct mlx4_init_hca_param *init_hca, u64 icm_size)
{
	struct mlx4_priv *priv = FUNC14(dev);
	u64 aux_pages;
	int num_eqs;
	int err;

	err = FUNC3(dev, icm_size, &aux_pages);
	if (err) {
		FUNC8(dev, "SET_ICM_SIZE command failed, aborting.\n");
		return err;
	}

	FUNC7(dev, "%lld KB of HCA context requires %lld KB aux memory.\n",
		 (unsigned long long) icm_size >> 10,
		 (unsigned long long) aux_pages << 2);

	priv->fw.aux_icm = FUNC5(dev, aux_pages,
					  GFP_HIGHUSER | __GFP_NOWARN, 0);
	if (!priv->fw.aux_icm) {
		FUNC8(dev, "Couldn't allocate aux memory, aborting.\n");
		return -ENOMEM;
	}

	err = FUNC2(dev, priv->fw.aux_icm);
	if (err) {
		FUNC8(dev, "MAP_ICM_AUX command failed, aborting.\n");
		goto err_free_aux;
	}

	err = FUNC11(dev, init_hca->cmpt_base, dev_cap->cmpt_entry_sz);
	if (err) {
		FUNC8(dev, "Failed to map cMPT context memory, aborting.\n");
		goto err_unmap_aux;
	}


	num_eqs = (FUNC13(dev)) ? dev->phys_caps.num_phys_eqs :
		   dev->caps.num_eqs;
	err = FUNC12(dev, &priv->eq_table.table,
				  init_hca->eqc_base, dev_cap->eqc_entry_sz,
				  num_eqs, num_eqs, 0, 0);
	if (err) {
		FUNC8(dev, "Failed to map EQ context memory, aborting.\n");
		goto err_unmap_cmpt;
	}

	/*
	 * Reserved MTT entries must be aligned up to a cacheline
	 * boundary, since the FW will write to them, while the driver
	 * writes to all other MTT entries. (The variable
	 * dev->caps.mtt_entry_sz below is really the MTT segment
	 * size, not the raw entry size)
	 */
	dev->caps.reserved_mtts =
		FUNC0(dev->caps.reserved_mtts * dev->caps.mtt_entry_sz,
		      FUNC1()) / dev->caps.mtt_entry_sz;

	err = FUNC12(dev, &priv->mr_table.mtt_table,
				  init_hca->mtt_base,
				  dev->caps.mtt_entry_sz,
				  dev->caps.num_mtts,
				  dev->caps.reserved_mtts, 1, 0);
	if (err) {
		FUNC8(dev, "Failed to map MTT context memory, aborting.\n");
		goto err_unmap_eq;
	}

	err = FUNC12(dev, &priv->mr_table.dmpt_table,
				  init_hca->dmpt_base,
				  dev_cap->dmpt_entry_sz,
				  dev->caps.num_mpts,
				  dev->caps.reserved_mrws, 1, 1);
	if (err) {
		FUNC8(dev, "Failed to map dMPT context memory, aborting.\n");
		goto err_unmap_mtt;
	}

	err = FUNC12(dev, &priv->qp_table.qp_table,
				  init_hca->qpc_base,
				  dev_cap->qpc_entry_sz,
				  dev->caps.num_qps,
				  dev->caps.reserved_qps_cnt[MLX4_QP_REGION_FW],
				  0, 0);
	if (err) {
		FUNC8(dev, "Failed to map QP context memory, aborting.\n");
		goto err_unmap_dmpt;
	}

	err = FUNC12(dev, &priv->qp_table.auxc_table,
				  init_hca->auxc_base,
				  dev_cap->aux_entry_sz,
				  dev->caps.num_qps,
				  dev->caps.reserved_qps_cnt[MLX4_QP_REGION_FW],
				  0, 0);
	if (err) {
		FUNC8(dev, "Failed to map AUXC context memory, aborting.\n");
		goto err_unmap_qp;
	}

	err = FUNC12(dev, &priv->qp_table.altc_table,
				  init_hca->altc_base,
				  dev_cap->altc_entry_sz,
				  dev->caps.num_qps,
				  dev->caps.reserved_qps_cnt[MLX4_QP_REGION_FW],
				  0, 0);
	if (err) {
		FUNC8(dev, "Failed to map ALTC context memory, aborting.\n");
		goto err_unmap_auxc;
	}

	err = FUNC12(dev, &priv->qp_table.rdmarc_table,
				  init_hca->rdmarc_base,
				  dev_cap->rdmarc_entry_sz << priv->qp_table.rdmarc_shift,
				  dev->caps.num_qps,
				  dev->caps.reserved_qps_cnt[MLX4_QP_REGION_FW],
				  0, 0);
	if (err) {
		FUNC8(dev, "Failed to map RDMARC context memory, aborting\n");
		goto err_unmap_altc;
	}

	err = FUNC12(dev, &priv->cq_table.table,
				  init_hca->cqc_base,
				  dev_cap->cqc_entry_sz,
				  dev->caps.num_cqs,
				  dev->caps.reserved_cqs, 0, 0);
	if (err) {
		FUNC8(dev, "Failed to map CQ context memory, aborting.\n");
		goto err_unmap_rdmarc;
	}

	err = FUNC12(dev, &priv->srq_table.table,
				  init_hca->srqc_base,
				  dev_cap->srq_entry_sz,
				  dev->caps.num_srqs,
				  dev->caps.reserved_srqs, 0, 0);
	if (err) {
		FUNC8(dev, "Failed to map SRQ context memory, aborting.\n");
		goto err_unmap_cq;
	}

	/*
	 * For flow steering device managed mode it is required to use
	 * mlx4_init_icm_table. For B0 steering mode it's not strictly
	 * required, but for simplicity just map the whole multicast
	 * group table now.  The table isn't very big and it's a lot
	 * easier than trying to track ref counts.
	 */
	err = FUNC12(dev, &priv->mcg_table.table,
				  init_hca->mc_base,
				  FUNC10(dev),
				  dev->caps.num_mgms + dev->caps.num_amgms,
				  dev->caps.num_mgms + dev->caps.num_amgms,
				  0, 0);
	if (err) {
		FUNC8(dev, "Failed to map MCG context memory, aborting.\n");
		goto err_unmap_srq;
	}

	return 0;

err_unmap_srq:
	FUNC6(dev, &priv->srq_table.table);

err_unmap_cq:
	FUNC6(dev, &priv->cq_table.table);

err_unmap_rdmarc:
	FUNC6(dev, &priv->qp_table.rdmarc_table);

err_unmap_altc:
	FUNC6(dev, &priv->qp_table.altc_table);

err_unmap_auxc:
	FUNC6(dev, &priv->qp_table.auxc_table);

err_unmap_qp:
	FUNC6(dev, &priv->qp_table.qp_table);

err_unmap_dmpt:
	FUNC6(dev, &priv->mr_table.dmpt_table);

err_unmap_mtt:
	FUNC6(dev, &priv->mr_table.mtt_table);

err_unmap_eq:
	FUNC6(dev, &priv->eq_table.table);

err_unmap_cmpt:
	FUNC6(dev, &priv->eq_table.cmpt_table);
	FUNC6(dev, &priv->cq_table.cmpt_table);
	FUNC6(dev, &priv->srq_table.cmpt_table);
	FUNC6(dev, &priv->qp_table.cmpt_table);

err_unmap_aux:
	FUNC4(dev);

err_free_aux:
	FUNC9(dev, priv->fw.aux_icm, 0);

	return err;
}