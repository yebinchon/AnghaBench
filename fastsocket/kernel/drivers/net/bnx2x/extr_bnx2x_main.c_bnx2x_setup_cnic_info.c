
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_eth_dev {int starting_cid; int drv_state; int iscsi_l2_cid; int fcoe_init_cid; scalar_t__ ctx_tbl_offset; } ;
struct bnx2x {struct cnic_eth_dev cnic_eth_dev; } ;


 int BNX2X_FCOE_ETH_CID (struct bnx2x*) ;
 int BNX2X_ISCSI_ETH_CID (struct bnx2x*) ;
 int BP_FUNC (struct bnx2x*) ;
 int CNIC_DRV_STATE_NO_ISCSI_OOO ;
 scalar_t__ FUNC_ILT_BASE (int ) ;
 int ILT_PAGE_CIDS ;
 scalar_t__ NO_ISCSI_OOO (struct bnx2x*) ;
 int bnx2x_cid_ilt_lines (struct bnx2x*) ;

void bnx2x_setup_cnic_info(struct bnx2x *bp)
{
 struct cnic_eth_dev *cp = &bp->cnic_eth_dev;

 cp->ctx_tbl_offset = FUNC_ILT_BASE(BP_FUNC(bp)) +
        bnx2x_cid_ilt_lines(bp);
 cp->starting_cid = bnx2x_cid_ilt_lines(bp) * ILT_PAGE_CIDS;
 cp->fcoe_init_cid = BNX2X_FCOE_ETH_CID(bp);
 cp->iscsi_l2_cid = BNX2X_ISCSI_ETH_CID(bp);

 if (NO_ISCSI_OOO(bp))
  cp->drv_state |= CNIC_DRV_STATE_NO_ISCSI_OOO;
}
