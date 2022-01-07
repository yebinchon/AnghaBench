
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct dchannel {int rqueue; } ;


 int FLG_RECVQUEUE ;
 int schedule_event (struct dchannel*,int ) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

void
recv_Dchannel_skb(struct dchannel *dch, struct sk_buff *skb)
{
 skb_queue_tail(&dch->rqueue, skb);
 schedule_event(dch, FLG_RECVQUEUE);
}
