
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int stats_sema; } ;


 int BNX2X_ERR (char*) ;
 int HZ ;
 int __bnx2x_stats_pmf_update (struct bnx2x*) ;
 int __bnx2x_stats_start (struct bnx2x*) ;
 int bnx2x_stats_comp (struct bnx2x*) ;
 scalar_t__ down_timeout (int *,int) ;
 int up (int *) ;

__attribute__((used)) static void bnx2x_stats_pmf_start(struct bnx2x *bp)
{
 if (down_timeout(&bp->stats_sema, HZ/10))
  BNX2X_ERR("Unable to acquire stats lock\n");
 bnx2x_stats_comp(bp);
 __bnx2x_stats_pmf_update(bp);
 __bnx2x_stats_start(bp);
 up(&bp->stats_sema);
}
