
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int rxbuf; struct ath_rx_edma* rx_edma; } ;
struct ath_softc {TYPE_1__ rx; } ;
struct ath_rx_edma {int rx_fifo; } ;
struct ath_buf {int list; } ;
typedef enum ath9k_rx_qtype { ____Placeholder_ath9k_rx_qtype } ath9k_rx_qtype ;


 int BUG_ON (int) ;
 struct ath_buf* SKB_CB_ATHBUF (struct sk_buff*) ;
 struct sk_buff* __skb_dequeue (int *) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void ath_rx_remove_buffer(struct ath_softc *sc,
     enum ath9k_rx_qtype qtype)
{
 struct ath_buf *bf;
 struct ath_rx_edma *rx_edma;
 struct sk_buff *skb;

 rx_edma = &sc->rx.rx_edma[qtype];

 while ((skb = __skb_dequeue(&rx_edma->rx_fifo)) != ((void*)0)) {
  bf = SKB_CB_ATHBUF(skb);
  BUG_ON(!bf);
  list_add_tail(&bf->list, &sc->rx.rxbuf);
 }
}
