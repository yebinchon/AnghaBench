
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mISDNhead {int id; int prim; } ;
struct dchannel {TYPE_1__* rx_skb; int rqueue; } ;
struct TYPE_4__ {int len; int data; } ;


 int FLG_RECVQUEUE ;
 int PH_DATA_IND ;
 int dev_kfree_skb (TYPE_1__*) ;
 int get_sapi_tei (int ) ;
 struct mISDNhead* mISDN_HEAD_P (TYPE_1__*) ;
 int schedule_event (struct dchannel*,int ) ;
 int skb_queue_tail (int *,TYPE_1__*) ;

void
recv_Dchannel(struct dchannel *dch)
{
 struct mISDNhead *hh;

 if (dch->rx_skb->len < 2) {
  dev_kfree_skb(dch->rx_skb);
  dch->rx_skb = ((void*)0);
  return;
 }
 hh = mISDN_HEAD_P(dch->rx_skb);
 hh->prim = PH_DATA_IND;
 hh->id = get_sapi_tei(dch->rx_skb->data);
 skb_queue_tail(&dch->rqueue, dch->rx_skb);
 dch->rx_skb = ((void*)0);
 schedule_event(dch, FLG_RECVQUEUE);
}
