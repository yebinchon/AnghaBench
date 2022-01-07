
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int link_vars; int link_params; } ;


 int BNX2X_ERR (char*) ;
 int BP_NOMCP (struct bnx2x*) ;
 int bnx2x_acquire_phy_lock (struct bnx2x*) ;
 int bnx2x_lfa_reset (int *,int *) ;
 int bnx2x_release_phy_lock (struct bnx2x*) ;

__attribute__((used)) static void bnx2x__link_reset(struct bnx2x *bp)
{
 if (!BP_NOMCP(bp)) {
  bnx2x_acquire_phy_lock(bp);
  bnx2x_lfa_reset(&bp->link_params, &bp->link_vars);
  bnx2x_release_phy_lock(bp);
 } else
  BNX2X_ERR("Bootcode is missing - can not reset link\n");
}
