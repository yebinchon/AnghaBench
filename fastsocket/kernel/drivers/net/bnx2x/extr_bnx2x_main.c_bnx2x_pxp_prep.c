
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 int CHIP_IS_E1 (struct bnx2x*) ;
 int PXP2_REG_RD_START_INIT ;
 int PXP2_REG_RQ_RBC_DONE ;
 int REG_WR (struct bnx2x*,int ,int ) ;
 int mmiowb () ;

__attribute__((used)) static void bnx2x_pxp_prep(struct bnx2x *bp)
{
 if (!CHIP_IS_E1(bp)) {
  REG_WR(bp, PXP2_REG_RD_START_INIT, 0);
  REG_WR(bp, PXP2_REG_RQ_RBC_DONE, 0);
  mmiowb();
 }
}
