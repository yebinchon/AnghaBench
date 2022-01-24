#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct cnic_dma {scalar_t__* pg_map_arr; scalar_t__* pg_arr; } ;
struct cnic_local {int max_cid_space; int fcoe_init_cid; int l2_rx_ring_size; struct cnic_eth_dev* ethdev; int /*<<< orphan*/  bnx2x_def_status_blk; struct cnic_dma gbl_buf_info; int /*<<< orphan*/  kcq2; int /*<<< orphan*/  kcq1; TYPE_2__* ctx_tbl; int /*<<< orphan*/ * iscsi_tbl; void* fcoe_start_cid; void* iscsi_start_cid; struct cnic_dma kwq_16_data_info; } ;
struct cnic_iscsi {int dummy; } ;
struct cnic_eth_dev {int fcoe_init_cid; int drv_state; TYPE_3__* irq_arr; void* starting_cid; } ;
struct cnic_dev {scalar_t__ max_fcoe_conn; int /*<<< orphan*/  netdev; struct cnic_local* cnic_priv; } ;
struct cnic_context {int dummy; } ;
struct bnx2x {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  status_blk; } ;
struct TYPE_4__ {int /*<<< orphan*/ * iscsi; } ;
struct TYPE_5__ {scalar_t__ kwqe_data_mapping; scalar_t__ kwqe_data; int /*<<< orphan*/  ulp_proto_id; TYPE_1__ proto; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int BNX2X_ISCSI_GLB_BUF_SIZE ; 
 int CNIC_DRV_STATE_NO_ISCSI ; 
 int CNIC_KWQ16_DATA_SIZE ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  CNIC_ULP_FCOE ; 
 int /*<<< orphan*/  CNIC_ULP_ISCSI ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_ISCSI_TBL_SZ ; 
 int FUNC2 (int) ; 
 int PAGE_SIZE ; 
 int FUNC3 (struct cnic_dev*) ; 
 int FUNC4 (struct cnic_dev*,struct cnic_dma*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct cnic_dev*,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct cnic_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct cnic_dev*) ; 
 int FUNC8 (struct cnic_dev*) ; 
 void* FUNC9 (int,int /*<<< orphan*/ ) ; 
 struct bnx2x* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct cnic_dev *dev)
{
	struct cnic_local *cp = dev->cnic_priv;
	struct bnx2x *bp = FUNC10(dev->netdev);
	struct cnic_eth_dev *ethdev = cp->ethdev;
	u32 start_cid = ethdev->starting_cid;
	int i, j, n, ret, pages;
	struct cnic_dma *kwq_16_dma = &cp->kwq_16_data_info;

	cp->max_cid_space = MAX_ISCSI_TBL_SZ;
	cp->iscsi_start_cid = start_cid;
	cp->fcoe_start_cid = start_cid + MAX_ISCSI_TBL_SZ;

	if (FUNC0(bp)) {
		cp->max_cid_space += dev->max_fcoe_conn;
		cp->fcoe_init_cid = ethdev->fcoe_init_cid;
		if (!cp->fcoe_init_cid)
			cp->fcoe_init_cid = 0x10;
	}

	cp->iscsi_tbl = FUNC9(sizeof(struct cnic_iscsi) * MAX_ISCSI_TBL_SZ,
				GFP_KERNEL);
	if (!cp->iscsi_tbl)
		goto error;

	cp->ctx_tbl = FUNC9(sizeof(struct cnic_context) *
				cp->max_cid_space, GFP_KERNEL);
	if (!cp->ctx_tbl)
		goto error;

	for (i = 0; i < MAX_ISCSI_TBL_SZ; i++) {
		cp->ctx_tbl[i].proto.iscsi = &cp->iscsi_tbl[i];
		cp->ctx_tbl[i].ulp_proto_id = CNIC_ULP_ISCSI;
	}

	for (i = MAX_ISCSI_TBL_SZ; i < cp->max_cid_space; i++)
		cp->ctx_tbl[i].ulp_proto_id = CNIC_ULP_FCOE;

	pages = FUNC2(cp->max_cid_space * CNIC_KWQ16_DATA_SIZE) /
		PAGE_SIZE;

	ret = FUNC4(dev, kwq_16_dma, pages, 0);
	if (ret)
		return -ENOMEM;

	n = PAGE_SIZE / CNIC_KWQ16_DATA_SIZE;
	for (i = 0, j = 0; i < cp->max_cid_space; i++) {
		long off = CNIC_KWQ16_DATA_SIZE * (i % n);

		cp->ctx_tbl[i].kwqe_data = kwq_16_dma->pg_arr[j] + off;
		cp->ctx_tbl[i].kwqe_data_mapping = kwq_16_dma->pg_map_arr[j] +
						   off;

		if ((i % n) == (n - 1))
			j++;
	}

	ret = FUNC5(dev, &cp->kcq1, false);
	if (ret)
		goto error;

	if (FUNC1(bp)) {
		ret = FUNC5(dev, &cp->kcq2, true);
		if (ret)
			goto error;
	}

	pages = FUNC2(BNX2X_ISCSI_GLB_BUF_SIZE) / PAGE_SIZE;
	ret = FUNC4(dev, &cp->gbl_buf_info, pages, 0);
	if (ret)
		goto error;

	ret = FUNC3(dev);
	if (ret)
		goto error;

	if (cp->ethdev->drv_state & CNIC_DRV_STATE_NO_ISCSI)
		return 0;

	cp->bnx2x_def_status_blk = cp->ethdev->irq_arr[1].status_blk;

	cp->l2_rx_ring_size = 15;

	ret = FUNC6(dev, 4);
	if (ret)
		goto error;

	ret = FUNC8(dev);
	if (ret)
		goto error;

	return 0;

error:
	FUNC7(dev);
	return -ENOMEM;
}