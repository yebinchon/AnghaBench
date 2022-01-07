
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {unsigned int len; } ;
struct bc_state {scalar_t__ proto2; TYPE_1__* cs; int squeue; } ;
struct TYPE_2__ {int lock; int write_tasklet; scalar_t__ connected; int dev; } ;


 int ENOMEM ;
 struct sk_buff* HDLC_Encode (struct sk_buff*,int ,int ) ;
 int HW_HDR_LEN ;
 scalar_t__ ISDN_PROTO_L2_HDLC ;
 int dev_err (int ,char*) ;
 struct sk_buff* iraw_encode (struct sk_buff*,int ,int ) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;

int gigaset_m10x_send_skb(struct bc_state *bcs, struct sk_buff *skb)
{
 unsigned len = skb->len;
 unsigned long flags;

 if (bcs->proto2 == ISDN_PROTO_L2_HDLC)
  skb = HDLC_Encode(skb, HW_HDR_LEN, 0);
 else
  skb = iraw_encode(skb, HW_HDR_LEN, 0);
 if (!skb) {
  dev_err(bcs->cs->dev,
   "unable to allocate memory for encoding!\n");
  return -ENOMEM;
 }

 skb_queue_tail(&bcs->squeue, skb);
 spin_lock_irqsave(&bcs->cs->lock, flags);
 if (bcs->cs->connected)
  tasklet_schedule(&bcs->cs->write_tasklet);
 spin_unlock_irqrestore(&bcs->cs->lock, flags);

 return len;
}
