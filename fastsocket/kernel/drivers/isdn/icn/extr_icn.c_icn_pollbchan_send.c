
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct TYPE_9__ {int length; } ;
struct TYPE_11__ {int arg; TYPE_1__ parm; int driver; int command; } ;
typedef TYPE_3__ isdn_ctrl ;
struct TYPE_10__ {int (* statcallb ) (TYPE_3__*) ;} ;
struct TYPE_12__ {int* xlen; int lock; scalar_t__* xmit_lock; struct sk_buff** xskb; TYPE_2__ interface; int myid; scalar_t__* sndcount; int * spqueue; scalar_t__ secondhalf; } ;
typedef TYPE_4__ icn_card ;


 int ICN_FRAGSIZE ;
 int ISDN_STAT_BSENT ;
 int dev_kfree_skb (struct sk_buff*) ;
 int icn_maprelease_channel (TYPE_4__*,int) ;
 scalar_t__ icn_trymaplock_channel (TYPE_4__*,int) ;
 int memcpy_toio (int *,int ,int) ;
 scalar_t__ sbfree ;
 int sbnext ;
 int sbuf_d ;
 int sbuf_f ;
 int sbuf_l ;
 struct sk_buff* skb_dequeue (int *) ;
 scalar_t__* skb_pull (struct sk_buff*,int) ;
 int skb_queue_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_3__*) ;
 int writeb (int,int *) ;

__attribute__((used)) static void
icn_pollbchan_send(int channel, icn_card * card)
{
 int mch = channel + ((card->secondhalf) ? 2 : 0);
 int cnt;
 unsigned long flags;
 struct sk_buff *skb;
 isdn_ctrl cmd;

 if (!(card->sndcount[channel] || card->xskb[channel] ||
       !skb_queue_empty(&card->spqueue[channel])))
  return;
 if (icn_trymaplock_channel(card, mch)) {
  while (sbfree &&
         (card->sndcount[channel] ||
   !skb_queue_empty(&card->spqueue[channel]) ||
   card->xskb[channel])) {
   spin_lock_irqsave(&card->lock, flags);
   if (card->xmit_lock[channel]) {
    spin_unlock_irqrestore(&card->lock, flags);
    break;
   }
   card->xmit_lock[channel]++;
   spin_unlock_irqrestore(&card->lock, flags);
   skb = card->xskb[channel];
   if (!skb) {
    skb = skb_dequeue(&card->spqueue[channel]);
    if (skb) {



     if (*(skb_pull(skb,1)))
      card->xlen[channel] = skb->len;
     else
      card->xlen[channel] = 0;
    }
   }
   if (!skb)
    break;
   if (skb->len > ICN_FRAGSIZE) {
    writeb(0xff, &sbuf_f);
    cnt = ICN_FRAGSIZE;
   } else {
    writeb(0x0, &sbuf_f);
    cnt = skb->len;
   }
   writeb(cnt, &sbuf_l);
   memcpy_toio(&sbuf_d, skb->data, cnt);
   skb_pull(skb, cnt);
   sbnext;
   icn_maprelease_channel(card, mch & 2);
   spin_lock_irqsave(&card->lock, flags);
   card->sndcount[channel] -= cnt;
   if (!skb->len) {
    if (card->xskb[channel])
     card->xskb[channel] = ((void*)0);
    card->xmit_lock[channel] = 0;
    spin_unlock_irqrestore(&card->lock, flags);
    dev_kfree_skb(skb);
    if (card->xlen[channel]) {
     cmd.command = ISDN_STAT_BSENT;
     cmd.driver = card->myid;
     cmd.arg = channel;
     cmd.parm.length = card->xlen[channel];
     card->interface.statcallb(&cmd);
    }
   } else {
    card->xskb[channel] = skb;
    card->xmit_lock[channel] = 0;
    spin_unlock_irqrestore(&card->lock, flags);
   }
   if (!icn_trymaplock_channel(card, mch))
    break;
  }
  icn_maprelease_channel(card, mch & 2);
 }
}
