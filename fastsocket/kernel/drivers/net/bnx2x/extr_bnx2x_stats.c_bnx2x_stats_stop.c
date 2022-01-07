
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pmf; } ;
struct bnx2x {int stats_started; int stats_sema; TYPE_1__ port; } ;


 int BNX2X_ERR (char*) ;
 int HZ ;
 int bnx2x_hw_stats_post (struct bnx2x*) ;
 scalar_t__ bnx2x_hw_stats_update (struct bnx2x*) ;
 int bnx2x_net_stats_update (struct bnx2x*) ;
 int bnx2x_port_stats_stop (struct bnx2x*) ;
 int bnx2x_stats_comp (struct bnx2x*) ;
 scalar_t__ bnx2x_storm_stats_update (struct bnx2x*) ;
 scalar_t__ down_timeout (int *,int) ;
 int up (int *) ;

__attribute__((used)) static void bnx2x_stats_stop(struct bnx2x *bp)
{
 int update = 0;

 if (down_timeout(&bp->stats_sema, HZ/10))
  BNX2X_ERR("Unable to acquire stats lock\n");

 bp->stats_started = 0;

 bnx2x_stats_comp(bp);

 if (bp->port.pmf)
  update = (bnx2x_hw_stats_update(bp) == 0);

 update |= (bnx2x_storm_stats_update(bp) == 0);

 if (update) {
  bnx2x_net_stats_update(bp);

  if (bp->port.pmf)
   bnx2x_port_stats_stop(bp);

  bnx2x_hw_stats_post(bp);
  bnx2x_stats_comp(bp);
 }

 up(&bp->stats_sema);
}
