
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct TYPE_4__ {TYPE_1__** drv; int * v110use; scalar_t__* v110; int * ibytes; } ;
struct TYPE_3__ {int * rcv_waitq; } ;


 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 TYPE_2__* dev ;
 int dev_kfree_skb (struct sk_buff*) ;
 int isdn_dc2minor (int,int) ;
 scalar_t__ isdn_net_rcv_skb (int,struct sk_buff*) ;
 scalar_t__ isdn_tty_rcv_skb (int,int,int,struct sk_buff*) ;
 struct sk_buff* isdn_v110_decode (scalar_t__,struct sk_buff*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void
isdn_receive_skb_callback(int di, int channel, struct sk_buff *skb)
{
 int i;

 if ((i = isdn_dc2minor(di, channel)) == -1) {
  dev_kfree_skb(skb);
  return;
 }

 dev->ibytes[i] += skb->len;


 if (isdn_net_rcv_skb(i, skb))
  return;





 if (dev->v110[i]) {
  atomic_inc(&dev->v110use[i]);
  skb = isdn_v110_decode(dev->v110[i], skb);
  atomic_dec(&dev->v110use[i]);
  if (!skb)
   return;
 }


 if (skb->len) {
  if (isdn_tty_rcv_skb(i, di, channel, skb))
   return;
  wake_up_interruptible(&dev->drv[di]->rcv_waitq[channel]);
 } else
  dev_kfree_skb(skb);
}
