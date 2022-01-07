
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct sk_buff {int * data; scalar_t__ len; } ;
struct TYPE_12__ {scalar_t__ flags; } ;
struct TYPE_13__ {TYPE_3__ data_b3_req; } ;
struct TYPE_10__ {int cmd; scalar_t__ subcmd; } ;
struct TYPE_11__ {TYPE_1__ cmd; } ;
struct TYPE_14__ {TYPE_4__ msg; TYPE_2__ hdr; } ;
typedef TYPE_5__ actcapi_msg ;
struct TYPE_15__ {struct sk_buff* sbuf; int ackq; scalar_t__ need_b3ack; int * ack_msg; int ilock; int lock; int sndq; } ;
typedef TYPE_6__ act2000_card ;


 int ACT2000_LOCK_TX ;
 scalar_t__ act2000_isa_writeb (TYPE_6__*,int ) ;
 int act2000_schedule_tx (TYPE_6__*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_and_clear_bit (int ,void*) ;
 scalar_t__ test_and_set_bit (int ,void*) ;

void
act2000_isa_send(act2000_card * card)
{
 unsigned long flags;
 struct sk_buff *skb;
 actcapi_msg *msg;
 int l;

        if (test_and_set_bit(ACT2000_LOCK_TX, (void *) &card->ilock) != 0)
  return;
 while (1) {
  spin_lock_irqsave(&card->lock, flags);
  if (!(card->sbuf)) {
   if ((card->sbuf = skb_dequeue(&card->sndq))) {
    card->ack_msg = card->sbuf->data;
    msg = (actcapi_msg *)card->sbuf->data;
    if ((msg->hdr.cmd.cmd == 0x86) &&
        (msg->hdr.cmd.subcmd == 0) ) {

     card->need_b3ack = msg->msg.data_b3_req.flags;
     msg->msg.data_b3_req.flags = 0;
    }
   }
  }
  spin_unlock_irqrestore(&card->lock, flags);
  if (!(card->sbuf)) {

   test_and_clear_bit(ACT2000_LOCK_TX, (void *) &card->ilock);
   return;
  }
  skb = card->sbuf;
  l = 0;
  while (skb->len) {
   if (act2000_isa_writeb(card, *(skb->data))) {

    test_and_clear_bit(ACT2000_LOCK_TX, (void *) &card->ilock);

    act2000_schedule_tx(card);
    return;
   }
   skb_pull(skb, 1);
   l++;
  }
  msg = (actcapi_msg *)card->ack_msg;
  if ((msg->hdr.cmd.cmd == 0x86) &&
      (msg->hdr.cmd.subcmd == 0) ) {




   skb->data = card->ack_msg;

   msg->msg.data_b3_req.flags = card->need_b3ack;
   skb_queue_tail(&card->ackq, skb);
  } else
   dev_kfree_skb(skb);
  card->sbuf = ((void*)0);
 }
}
