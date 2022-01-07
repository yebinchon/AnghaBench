
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u64 ;
struct bnad {int num_rx; int num_rxp_per_rx; int num_tx; int num_txq_per_tx; TYPE_1__* tx_info; TYPE_6__* rx_info; } ;
struct bna_tcb {int * hw_consumer_index; int consumer_index; int producer_index; TYPE_2__* txq; } ;
struct bna_rcb {int consumer_index; int producer_index; TYPE_3__* rxq; } ;
struct TYPE_12__ {TYPE_5__* rx_ctrl; int rx; } ;
struct TYPE_11__ {TYPE_4__* ccb; int rx_complete; int rx_keep_poll; int rx_schedule; int rx_poll_ctr; int rx_intr_ctr; } ;
struct TYPE_10__ {struct bna_rcb** rcb; int * hw_producer_index; int producer_index; } ;
struct TYPE_9__ {int rxbuf_alloc_failed; int rx_packets_with_error; int rx_bytes; int rx_packets; } ;
struct TYPE_8__ {int tx_bytes; int tx_packets; } ;
struct TYPE_7__ {struct bna_tcb** tcb; int tx; } ;



__attribute__((used)) static int
bnad_per_q_stats_fill(struct bnad *bnad, u64 *buf, int bi)
{
 int i, j;
 struct bna_rcb *rcb = ((void*)0);
 struct bna_tcb *tcb = ((void*)0);

 for (i = 0; i < bnad->num_rx; i++) {
  if (!bnad->rx_info[i].rx)
   continue;
  for (j = 0; j < bnad->num_rxp_per_rx; j++)
   if (bnad->rx_info[i].rx_ctrl[j].ccb &&
    bnad->rx_info[i].rx_ctrl[j].ccb->rcb[0] &&
    bnad->rx_info[i].rx_ctrl[j].ccb->rcb[0]->rxq) {
    buf[bi++] = bnad->rx_info[i].rx_ctrl[j].
      ccb->producer_index;
    buf[bi++] = 0;
    buf[bi++] = *(bnad->rx_info[i].rx_ctrl[j].
      ccb->hw_producer_index);

    buf[bi++] = bnad->rx_info[i].
      rx_ctrl[j].rx_intr_ctr;
    buf[bi++] = bnad->rx_info[i].
      rx_ctrl[j].rx_poll_ctr;
    buf[bi++] = bnad->rx_info[i].
      rx_ctrl[j].rx_schedule;
    buf[bi++] = bnad->rx_info[i].
      rx_ctrl[j].rx_keep_poll;
    buf[bi++] = bnad->rx_info[i].
      rx_ctrl[j].rx_complete;
   }
 }
 for (i = 0; i < bnad->num_rx; i++) {
  if (!bnad->rx_info[i].rx)
   continue;
  for (j = 0; j < bnad->num_rxp_per_rx; j++)
   if (bnad->rx_info[i].rx_ctrl[j].ccb) {
    if (bnad->rx_info[i].rx_ctrl[j].ccb->rcb[0] &&
     bnad->rx_info[i].rx_ctrl[j].ccb->
     rcb[0]->rxq) {
     rcb = bnad->rx_info[i].rx_ctrl[j].
       ccb->rcb[0];
     buf[bi++] = rcb->rxq->rx_packets;
     buf[bi++] = rcb->rxq->rx_bytes;
     buf[bi++] = rcb->rxq->
       rx_packets_with_error;
     buf[bi++] = rcb->rxq->
       rxbuf_alloc_failed;
     buf[bi++] = rcb->producer_index;
     buf[bi++] = rcb->consumer_index;
    }
    if (bnad->rx_info[i].rx_ctrl[j].ccb->rcb[1] &&
     bnad->rx_info[i].rx_ctrl[j].ccb->
     rcb[1]->rxq) {
     rcb = bnad->rx_info[i].rx_ctrl[j].
        ccb->rcb[1];
     buf[bi++] = rcb->rxq->rx_packets;
     buf[bi++] = rcb->rxq->rx_bytes;
     buf[bi++] = rcb->rxq->
       rx_packets_with_error;
     buf[bi++] = rcb->rxq->
       rxbuf_alloc_failed;
     buf[bi++] = rcb->producer_index;
     buf[bi++] = rcb->consumer_index;
    }
   }
 }

 for (i = 0; i < bnad->num_tx; i++) {
  if (!bnad->tx_info[i].tx)
   continue;
  for (j = 0; j < bnad->num_txq_per_tx; j++)
   if (bnad->tx_info[i].tcb[j] &&
    bnad->tx_info[i].tcb[j]->txq) {
    tcb = bnad->tx_info[i].tcb[j];
    buf[bi++] = tcb->txq->tx_packets;
    buf[bi++] = tcb->txq->tx_bytes;
    buf[bi++] = tcb->producer_index;
    buf[bi++] = tcb->consumer_index;
    buf[bi++] = *(tcb->hw_consumer_index);
   }
 }

 return bi;
}
