
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int cnic_sb_mapping; } ;


 int BNX2X_VF_ID_INVALID ;
 int NO_FCOE (struct bnx2x*) ;
 int bnx2x_cnic_fw_sb_id (struct bnx2x*) ;
 int bnx2x_cnic_igu_sb_id (struct bnx2x*) ;
 int bnx2x_init_fcoe_fp (struct bnx2x*) ;
 int bnx2x_init_rx_rings_cnic (struct bnx2x*) ;
 int bnx2x_init_sb (struct bnx2x*,int ,int ,int,int ,int ) ;
 int bnx2x_init_tx_rings_cnic (struct bnx2x*) ;
 int mb () ;
 int mmiowb () ;
 int rmb () ;

void bnx2x_nic_init_cnic(struct bnx2x *bp)
{
 if (!NO_FCOE(bp))
  bnx2x_init_fcoe_fp(bp);

 bnx2x_init_sb(bp, bp->cnic_sb_mapping,
        BNX2X_VF_ID_INVALID, 0,
        bnx2x_cnic_fw_sb_id(bp), bnx2x_cnic_igu_sb_id(bp));


 rmb();
 bnx2x_init_rx_rings_cnic(bp);
 bnx2x_init_tx_rings_cnic(bp);


 mb();
 mmiowb();
}
