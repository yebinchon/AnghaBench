
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sk_buff {int dummy; } ;
struct mISDNhead {int id; int prim; } ;
struct mISDNchannel {scalar_t__ peer; int (* recv ) (scalar_t__,struct sk_buff*) ;} ;


 int GFP_ATOMIC ;
 int _queue_data (struct mISDNchannel*,int ,int,int ,int *,int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct mISDNhead* mISDN_HEAD_P (struct sk_buff*) ;
 int stub1 (scalar_t__,struct sk_buff*) ;

void
queue_ch_frame(struct mISDNchannel *ch, u_int pr, int id, struct sk_buff *skb)
{
 struct mISDNhead *hh;

 if (!skb) {
  _queue_data(ch, pr, id, 0, ((void*)0), GFP_ATOMIC);
 } else {
  if (ch->peer) {
   hh = mISDN_HEAD_P(skb);
   hh->prim = pr;
   hh->id = id;
   if (!ch->recv(ch->peer, skb))
    return;
  }
  dev_kfree_skb(skb);
 }
}
