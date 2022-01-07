
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mac_stx {int dummy; } ;
struct host_port_stats {int * mac_stx; } ;
struct TYPE_2__ {scalar_t__ mac_type; scalar_t__ line_speed; scalar_t__ link_up; } ;
struct bnx2x {scalar_t__ state; TYPE_1__ link_vars; int link_params; } ;


 scalar_t__ BNX2X_STATE_OPEN ;
 scalar_t__ IS_MF (struct bnx2x*) ;
 scalar_t__ MAC_TYPE_EMAC ;
 int STATS_EVENT_LINK_UP ;
 int STATS_EVENT_STOP ;
 int __bnx2x_link_report (struct bnx2x*) ;
 int bnx2x_init_dropless_fc (struct bnx2x*) ;
 int bnx2x_link_sync_notify (struct bnx2x*) ;
 int bnx2x_link_update (int *,TYPE_1__*) ;
 int bnx2x_set_local_cmng (struct bnx2x*) ;
 struct host_port_stats* bnx2x_sp (struct bnx2x*,int ) ;
 int bnx2x_stats_handle (struct bnx2x*,int ) ;
 int memset (int *,int ,int) ;
 int port_stats ;

__attribute__((used)) static void bnx2x_link_attn(struct bnx2x *bp)
{

 bnx2x_stats_handle(bp, STATS_EVENT_STOP);

 bnx2x_link_update(&bp->link_params, &bp->link_vars);

 bnx2x_init_dropless_fc(bp);

 if (bp->link_vars.link_up) {

  if (bp->link_vars.mac_type != MAC_TYPE_EMAC) {
   struct host_port_stats *pstats;

   pstats = bnx2x_sp(bp, port_stats);

   memset(&(pstats->mac_stx[0]), 0,
          sizeof(struct mac_stx));
  }
  if (bp->state == BNX2X_STATE_OPEN)
   bnx2x_stats_handle(bp, STATS_EVENT_LINK_UP);
 }

 if (bp->link_vars.link_up && bp->link_vars.line_speed)
  bnx2x_set_local_cmng(bp);

 __bnx2x_link_report(bp);

 if (IS_MF(bp))
  bnx2x_link_sync_notify(bp);
}
