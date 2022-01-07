
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct cnic_eth_dev {int max_kwqe_pending; int starting_cid; int ctx_tbl_len; scalar_t__ ctx_tbl_offset; int ctx_blk_size; int drv_state; int iscsi_l2_cid; int iscsi_l2_client_id; int fcoe_init_cid; int drv_unregister_cnic; int drv_register_cnic; int drv_ctl; int drv_submit_kwqes_16; int io_base2; int io_base; int pdev; int chip_id; int drv_owner; } ;
struct bnx2x {int doorbells; int regview; int pdev; struct cnic_eth_dev cnic_eth_dev; } ;


 int BNX2X_DEV_INFO (char*,int ,scalar_t__,int ,int) ;
 int BNX2X_FCOE_ETH_CID (struct bnx2x*) ;
 int BNX2X_ISCSI_ETH_CID (struct bnx2x*) ;
 int BNX2X_ISCSI_ETH_CL_ID_IDX ;
 int BP_FUNC (struct bnx2x*) ;
 int CDU_ILT_PAGE_SZ ;
 int CHIP_ID (struct bnx2x*) ;
 int CNIC_DRV_STATE_NO_FCOE ;
 int CNIC_DRV_STATE_NO_ISCSI ;
 int CNIC_DRV_STATE_NO_ISCSI_OOO ;
 int CNIC_ILT_LINES ;
 scalar_t__ FUNC_ILT_BASE (int ) ;
 int ILT_PAGE_CIDS ;
 scalar_t__ NO_FCOE (struct bnx2x*) ;
 scalar_t__ NO_ISCSI (struct bnx2x*) ;
 scalar_t__ NO_ISCSI_OOO (struct bnx2x*) ;
 int THIS_MODULE ;
 int bnx2x_cid_ilt_lines (struct bnx2x*) ;
 int bnx2x_cnic_eth_cl_id (struct bnx2x*,int ) ;
 int bnx2x_cnic_sp_queue ;
 int bnx2x_drv_ctl ;
 int bnx2x_register_cnic ;
 int bnx2x_unregister_cnic ;
 struct bnx2x* netdev_priv (struct net_device*) ;

struct cnic_eth_dev *bnx2x_cnic_probe(struct net_device *dev)
{
 struct bnx2x *bp = netdev_priv(dev);
 struct cnic_eth_dev *cp = &bp->cnic_eth_dev;





 if (NO_ISCSI(bp) && NO_FCOE(bp))
  return ((void*)0);

 cp->drv_owner = THIS_MODULE;
 cp->chip_id = CHIP_ID(bp);
 cp->pdev = bp->pdev;
 cp->io_base = bp->regview;
 cp->io_base2 = bp->doorbells;
 cp->max_kwqe_pending = 8;
 cp->ctx_blk_size = CDU_ILT_PAGE_SZ;
 cp->ctx_tbl_offset = FUNC_ILT_BASE(BP_FUNC(bp)) +
        bnx2x_cid_ilt_lines(bp);
 cp->ctx_tbl_len = CNIC_ILT_LINES;
 cp->starting_cid = bnx2x_cid_ilt_lines(bp) * ILT_PAGE_CIDS;
 cp->drv_submit_kwqes_16 = bnx2x_cnic_sp_queue;
 cp->drv_ctl = bnx2x_drv_ctl;
 cp->drv_register_cnic = bnx2x_register_cnic;
 cp->drv_unregister_cnic = bnx2x_unregister_cnic;
 cp->fcoe_init_cid = BNX2X_FCOE_ETH_CID(bp);
 cp->iscsi_l2_client_id =
  bnx2x_cnic_eth_cl_id(bp, BNX2X_ISCSI_ETH_CL_ID_IDX);
 cp->iscsi_l2_cid = BNX2X_ISCSI_ETH_CID(bp);

 if (NO_ISCSI_OOO(bp))
  cp->drv_state |= CNIC_DRV_STATE_NO_ISCSI_OOO;

 if (NO_ISCSI(bp))
  cp->drv_state |= CNIC_DRV_STATE_NO_ISCSI;

 if (NO_FCOE(bp))
  cp->drv_state |= CNIC_DRV_STATE_NO_FCOE;

 BNX2X_DEV_INFO(
  "page_size %d, tbl_offset %d, tbl_lines %d, starting cid %d\n",
    cp->ctx_blk_size,
    cp->ctx_tbl_offset,
    cp->ctx_tbl_len,
    cp->starting_cid);
 return cp;
}
