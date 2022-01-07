
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2x {int stats_state; int stats_lock; int panic; } ;
typedef enum bnx2x_stats_state { ____Placeholder_bnx2x_stats_state } bnx2x_stats_state ;
typedef enum bnx2x_stats_event { ____Placeholder_bnx2x_stats_event } bnx2x_stats_event ;
struct TYPE_2__ {int next_state; void (* action ) (struct bnx2x*) ;} ;


 int BNX2X_MSG_STATS ;
 int DP (int ,char*,int,int,int) ;
 int STATS_EVENT_UPDATE ;
 TYPE_1__** bnx2x_stats_stm ;
 scalar_t__ netif_msg_timer (struct bnx2x*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int ) ;

void bnx2x_stats_handle(struct bnx2x *bp, enum bnx2x_stats_event event)
{
 enum bnx2x_stats_state state;
 void (*action)(struct bnx2x *bp);
 if (unlikely(bp->panic))
  return;

 spin_lock_bh(&bp->stats_lock);
 state = bp->stats_state;
 bp->stats_state = bnx2x_stats_stm[state][event].next_state;
 action = bnx2x_stats_stm[state][event].action;
 spin_unlock_bh(&bp->stats_lock);

 action(bp);

 if ((event != STATS_EVENT_UPDATE) || netif_msg_timer(bp))
  DP(BNX2X_MSG_STATS, "state %d -> event %d -> state %d\n",
     state, event, bp->stats_state);
}
