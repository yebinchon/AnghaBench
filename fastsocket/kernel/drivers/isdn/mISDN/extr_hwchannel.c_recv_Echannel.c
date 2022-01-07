
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mISDNhead {int id; int prim; } ;
struct dchannel {TYPE_1__* rx_skb; int rqueue; } ;
struct TYPE_4__ {int len; int data; } ;


 int FLG_RECVQUEUE ;
 int PH_DATA_E_IND ;
 int dev_kfree_skb (TYPE_1__*) ;
 int get_sapi_tei (int ) ;
 struct mISDNhead* mISDN_HEAD_P (TYPE_1__*) ;
 int schedule_event (struct dchannel*,int ) ;
 int skb_queue_tail (int *,TYPE_1__*) ;

void
recv_Echannel(struct dchannel *ech, struct dchannel *dch)
{
 struct mISDNhead *hh;

 if (ech->rx_skb->len < 2) {
  dev_kfree_skb(ech->rx_skb);
  ech->rx_skb = ((void*)0);
  return;
 }
 hh = mISDN_HEAD_P(ech->rx_skb);
 hh->prim = PH_DATA_E_IND;
 hh->id = get_sapi_tei(ech->rx_skb->data);
 skb_queue_tail(&dch->rqueue, ech->rx_skb);
 ech->rx_skb = ((void*)0);
 schedule_event(dch, FLG_RECVQUEUE);
}
