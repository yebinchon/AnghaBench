
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
struct cnic_dma {scalar_t__* pg_map_arr; scalar_t__* pg_arr; } ;
struct cnic_local {int max_cid_space; int fcoe_init_cid; int l2_rx_ring_size; struct cnic_eth_dev* ethdev; int bnx2x_def_status_blk; struct cnic_dma gbl_buf_info; int kcq2; int kcq1; TYPE_2__* ctx_tbl; int * iscsi_tbl; void* fcoe_start_cid; void* iscsi_start_cid; struct cnic_dma kwq_16_data_info; } ;
struct cnic_iscsi {int dummy; } ;
struct cnic_eth_dev {int fcoe_init_cid; int drv_state; TYPE_3__* irq_arr; void* starting_cid; } ;
struct cnic_dev {scalar_t__ max_fcoe_conn; int netdev; struct cnic_local* cnic_priv; } ;
struct cnic_context {int dummy; } ;
struct bnx2x {int dummy; } ;
struct TYPE_6__ {int status_blk; } ;
struct TYPE_4__ {int * iscsi; } ;
struct TYPE_5__ {scalar_t__ kwqe_data_mapping; scalar_t__ kwqe_data; int ulp_proto_id; TYPE_1__ proto; } ;


 scalar_t__ BNX2X_CHIP_IS_E2_PLUS (struct bnx2x*) ;
 int BNX2X_ISCSI_GLB_BUF_SIZE ;
 int CNIC_DRV_STATE_NO_ISCSI ;
 int CNIC_KWQ16_DATA_SIZE ;
 scalar_t__ CNIC_SUPPORTS_FCOE (struct bnx2x*) ;
 int CNIC_ULP_FCOE ;
 int CNIC_ULP_ISCSI ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_ISCSI_TBL_SZ ;
 int PAGE_ALIGN (int) ;
 int PAGE_SIZE ;
 int cnic_alloc_bnx2x_context (struct cnic_dev*) ;
 int cnic_alloc_dma (struct cnic_dev*,struct cnic_dma*,int,int ) ;
 int cnic_alloc_kcq (struct cnic_dev*,int *,int) ;
 int cnic_alloc_uio_rings (struct cnic_dev*,int) ;
 int cnic_free_resc (struct cnic_dev*) ;
 int cnic_init_uio (struct cnic_dev*) ;
 void* kzalloc (int,int ) ;
 struct bnx2x* netdev_priv (int ) ;

__attribute__((used)) static int cnic_alloc_bnx2x_resc(struct cnic_dev *dev)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct bnx2x *bp = netdev_priv(dev->netdev);
 struct cnic_eth_dev *ethdev = cp->ethdev;
 u32 start_cid = ethdev->starting_cid;
 int i, j, n, ret, pages;
 struct cnic_dma *kwq_16_dma = &cp->kwq_16_data_info;

 cp->max_cid_space = MAX_ISCSI_TBL_SZ;
 cp->iscsi_start_cid = start_cid;
 cp->fcoe_start_cid = start_cid + MAX_ISCSI_TBL_SZ;

 if (BNX2X_CHIP_IS_E2_PLUS(bp)) {
  cp->max_cid_space += dev->max_fcoe_conn;
  cp->fcoe_init_cid = ethdev->fcoe_init_cid;
  if (!cp->fcoe_init_cid)
   cp->fcoe_init_cid = 0x10;
 }

 cp->iscsi_tbl = kzalloc(sizeof(struct cnic_iscsi) * MAX_ISCSI_TBL_SZ,
    GFP_KERNEL);
 if (!cp->iscsi_tbl)
  goto error;

 cp->ctx_tbl = kzalloc(sizeof(struct cnic_context) *
    cp->max_cid_space, GFP_KERNEL);
 if (!cp->ctx_tbl)
  goto error;

 for (i = 0; i < MAX_ISCSI_TBL_SZ; i++) {
  cp->ctx_tbl[i].proto.iscsi = &cp->iscsi_tbl[i];
  cp->ctx_tbl[i].ulp_proto_id = CNIC_ULP_ISCSI;
 }

 for (i = MAX_ISCSI_TBL_SZ; i < cp->max_cid_space; i++)
  cp->ctx_tbl[i].ulp_proto_id = CNIC_ULP_FCOE;

 pages = PAGE_ALIGN(cp->max_cid_space * CNIC_KWQ16_DATA_SIZE) /
  PAGE_SIZE;

 ret = cnic_alloc_dma(dev, kwq_16_dma, pages, 0);
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

 ret = cnic_alloc_kcq(dev, &cp->kcq1, 0);
 if (ret)
  goto error;

 if (CNIC_SUPPORTS_FCOE(bp)) {
  ret = cnic_alloc_kcq(dev, &cp->kcq2, 1);
  if (ret)
   goto error;
 }

 pages = PAGE_ALIGN(BNX2X_ISCSI_GLB_BUF_SIZE) / PAGE_SIZE;
 ret = cnic_alloc_dma(dev, &cp->gbl_buf_info, pages, 0);
 if (ret)
  goto error;

 ret = cnic_alloc_bnx2x_context(dev);
 if (ret)
  goto error;

 if (cp->ethdev->drv_state & CNIC_DRV_STATE_NO_ISCSI)
  return 0;

 cp->bnx2x_def_status_blk = cp->ethdev->irq_arr[1].status_blk;

 cp->l2_rx_ring_size = 15;

 ret = cnic_alloc_uio_rings(dev, 4);
 if (ret)
  goto error;

 ret = cnic_init_uio(dev);
 if (ret)
  goto error;

 return 0;

error:
 cnic_free_resc(dev);
 return -ENOMEM;
}
