
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int link_vars; int link_params; } ;


 int bnx2x_acquire_phy_lock (struct bnx2x*) ;
 int bnx2x_link_reset (int *,int *,int) ;
 int bnx2x_release_phy_lock (struct bnx2x*) ;

void bnx2x_force_link_reset(struct bnx2x *bp)
{
 bnx2x_acquire_phy_lock(bp);
 bnx2x_link_reset(&bp->link_params, &bp->link_vars, 1);
 bnx2x_release_phy_lock(bp);
}
