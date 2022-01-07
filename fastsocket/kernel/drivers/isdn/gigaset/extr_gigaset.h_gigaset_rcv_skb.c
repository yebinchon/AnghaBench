
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int (* rcvcallb_skb ) (int ,int ,struct sk_buff*) ;} ;
struct cardstate {int myid; TYPE_1__ iif; } ;
struct bc_state {int trans_down; int channel; } ;


 int stub1 (int ,int ,struct sk_buff*) ;

__attribute__((used)) static inline void gigaset_rcv_skb(struct sk_buff *skb,
       struct cardstate *cs,
       struct bc_state *bcs)
{
 cs->iif.rcvcallb_skb(cs->myid, bcs->channel, skb);
 bcs->trans_down++;
}
