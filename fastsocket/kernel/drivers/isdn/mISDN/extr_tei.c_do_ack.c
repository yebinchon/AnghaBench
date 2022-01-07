
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int peer; int (* recv ) (int ,struct sk_buff*) ;} ;
struct manager {scalar_t__ lastid; int options; TYPE_1__ ch; int sendq; } ;


 int MGR_PH_ACTIVE ;
 int MGR_PH_NOTREADY ;
 scalar_t__ MISDN_ID_NONE ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ mISDN_HEAD_ID (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int stub1 (int ,struct sk_buff*) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
do_ack(struct manager *mgr, u_int id)
{
 if (test_bit(MGR_PH_NOTREADY, &mgr->options)) {
  if (id == mgr->lastid) {
   if (test_bit(MGR_PH_ACTIVE, &mgr->options)) {
    struct sk_buff *skb;

    skb = skb_dequeue(&mgr->sendq);
    if (skb) {
     mgr->lastid = mISDN_HEAD_ID(skb);
     if (!mgr->ch.recv(mgr->ch.peer, skb))
      return;
     dev_kfree_skb(skb);
    }
   }
   mgr->lastid = MISDN_ID_NONE;
   test_and_clear_bit(MGR_PH_NOTREADY, &mgr->options);
  }
 }
}
