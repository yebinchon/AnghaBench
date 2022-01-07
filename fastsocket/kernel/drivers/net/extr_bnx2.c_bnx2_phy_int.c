
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2_napi {int dummy; } ;
struct bnx2 {int phy_lock; } ;


 int STATUS_ATTN_BITS_LINK_STATE ;
 int STATUS_ATTN_BITS_TIMER_ABORT ;
 scalar_t__ bnx2_phy_event_is_set (struct bnx2*,struct bnx2_napi*,int ) ;
 int bnx2_set_link (struct bnx2*) ;
 int bnx2_set_remote_link (struct bnx2*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
bnx2_phy_int(struct bnx2 *bp, struct bnx2_napi *bnapi)
{
 spin_lock(&bp->phy_lock);

 if (bnx2_phy_event_is_set(bp, bnapi, STATUS_ATTN_BITS_LINK_STATE))
  bnx2_set_link(bp);
 if (bnx2_phy_event_is_set(bp, bnapi, STATUS_ATTN_BITS_TIMER_ABORT))
  bnx2_set_remote_link(bp);

 spin_unlock(&bp->phy_lock);

}
