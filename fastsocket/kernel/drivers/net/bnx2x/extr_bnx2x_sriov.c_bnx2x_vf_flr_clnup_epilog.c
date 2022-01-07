
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*) ;
 scalar_t__ bnx2x_vf_is_pcie_pending (struct bnx2x*,int ) ;

int bnx2x_vf_flr_clnup_epilog(struct bnx2x *bp, u8 abs_vfid)
{

 if (bnx2x_vf_is_pcie_pending(bp, abs_vfid))
  BNX2X_ERR("PCIE Transactions still pending\n");

 return 0;
}
