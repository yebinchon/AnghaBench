
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * function; } ;
struct IsdnCardState {TYPE_3__ dbusytimer; int (* cardmsg ) (struct IsdnCardState*,int ,int *) ;int (* DC_Close ) (struct IsdnCardState*) ;int * tx_skb; int * rcvbuf; int sq; int rq; TYPE_1__* bcs; } ;
struct TYPE_7__ {struct IsdnCardState* cs; } ;
struct TYPE_5__ {int (* BC_Close ) (TYPE_1__*) ;} ;


 int CARD_RELEASE ;
 TYPE_4__* cards ;
 int del_timer (TYPE_3__*) ;
 int dev_kfree_skb (int *) ;
 int kfree (int *) ;
 int ll_unload (struct IsdnCardState*) ;
 int skb_queue_purge (int *) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;
 int stub3 (struct IsdnCardState*) ;
 int stub4 (struct IsdnCardState*,int ,int *) ;

__attribute__((used)) static void closecard(int cardnr)
{
 struct IsdnCardState *csta = cards[cardnr].cs;

 if (csta->bcs->BC_Close != ((void*)0)) {
  csta->bcs->BC_Close(csta->bcs + 1);
  csta->bcs->BC_Close(csta->bcs);
 }

 skb_queue_purge(&csta->rq);
 skb_queue_purge(&csta->sq);
 kfree(csta->rcvbuf);
 csta->rcvbuf = ((void*)0);
 if (csta->tx_skb) {
  dev_kfree_skb(csta->tx_skb);
  csta->tx_skb = ((void*)0);
 }
 if (csta->DC_Close != ((void*)0)) {
  csta->DC_Close(csta);
 }
 if (csta->cardmsg)
  csta->cardmsg(csta, CARD_RELEASE, ((void*)0));
 if (csta->dbusytimer.function != ((void*)0))
  del_timer(&csta->dbusytimer);
 ll_unload(csta);
}
