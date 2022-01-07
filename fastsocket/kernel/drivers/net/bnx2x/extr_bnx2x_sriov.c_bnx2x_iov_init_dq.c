
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 int BNX2X_DB_MIN_SHIFT ;
 int BNX2X_DB_SHIFT ;
 int BNX2X_FIRST_VF_CID ;
 int BNX2X_MAX_NUM_OF_VFS ;
 int BNX2X_VF_CID_WND ;
 int DORQ_REG_MAX_RVFID_SIZE ;
 int DORQ_REG_VF_NORM_CID_BASE ;
 int DORQ_REG_VF_NORM_CID_OFST ;
 int DORQ_REG_VF_NORM_CID_WND_SIZE ;
 int DORQ_REG_VF_NORM_MAX_CID_COUNT ;
 int DORQ_REG_VF_NORM_VF_BASE ;
 int DORQ_REG_VF_TYPE_MASK_0 ;
 int DORQ_REG_VF_TYPE_MAX_MCID_0 ;
 int DORQ_REG_VF_TYPE_MIN_MCID_0 ;
 int DORQ_REG_VF_TYPE_VALUE_0 ;
 int DORQ_REG_VF_USAGE_CT_LIMIT ;
 int IS_SRIOV (struct bnx2x*) ;
 int REG_WR (struct bnx2x*,int ,int) ;
 int ilog2 (int ) ;

void bnx2x_iov_init_dq(struct bnx2x *bp)
{
 if (!IS_SRIOV(bp))
  return;


 REG_WR(bp, DORQ_REG_VF_NORM_VF_BASE, 0);
 REG_WR(bp, DORQ_REG_MAX_RVFID_SIZE, ilog2(BNX2X_MAX_NUM_OF_VFS));




 REG_WR(bp, DORQ_REG_VF_NORM_CID_BASE, BNX2X_FIRST_VF_CID);


 REG_WR(bp, DORQ_REG_VF_NORM_CID_WND_SIZE, BNX2X_VF_CID_WND);




 REG_WR(bp, DORQ_REG_VF_NORM_CID_OFST,
        BNX2X_DB_SHIFT - BNX2X_DB_MIN_SHIFT);





 REG_WR(bp, DORQ_REG_VF_TYPE_MASK_0, 1);
 REG_WR(bp, DORQ_REG_VF_TYPE_VALUE_0, 0);
 REG_WR(bp, DORQ_REG_VF_TYPE_MIN_MCID_0, 0);
 REG_WR(bp, DORQ_REG_VF_TYPE_MAX_MCID_0, 0x1ffff);


 REG_WR(bp, DORQ_REG_VF_NORM_MAX_CID_COUNT, 0x20000);


 REG_WR(bp, DORQ_REG_VF_USAGE_CT_LIMIT, 4);
}
