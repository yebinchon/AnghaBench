
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ppp {int dummy; } ;
struct TYPE_5__ {int xq; } ;
struct channel {int upl; struct ppp* ppp; TYPE_2__ file; int downl; TYPE_3__* chan; } ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* start_xmit ) (TYPE_3__*,struct sk_buff*) ;} ;


 int ppp_xmit_process (struct ppp*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 struct sk_buff* skb_dequeue (int *) ;
 scalar_t__ skb_queue_empty (int *) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 int skb_queue_purge (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (TYPE_3__*,struct sk_buff*) ;

__attribute__((used)) static void
ppp_channel_push(struct channel *pch)
{
 struct sk_buff *skb;
 struct ppp *ppp;

 spin_lock_bh(&pch->downl);
 if (pch->chan) {
  while (!skb_queue_empty(&pch->file.xq)) {
   skb = skb_dequeue(&pch->file.xq);
   if (!pch->chan->ops->start_xmit(pch->chan, skb)) {

    skb_queue_head(&pch->file.xq, skb);
    break;
   }
  }
 } else {

  skb_queue_purge(&pch->file.xq);
 }
 spin_unlock_bh(&pch->downl);

 if (skb_queue_empty(&pch->file.xq)) {
  read_lock_bh(&pch->upl);
  ppp = pch->ppp;
  if (ppp)
   ppp_xmit_process(ppp);
  read_unlock_bh(&pch->upl);
 }
}
