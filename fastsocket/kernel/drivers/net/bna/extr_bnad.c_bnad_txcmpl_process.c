
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {scalar_t__ len; } ;
struct bnad_tx_unmap {int nvecs; struct sk_buff* skb; } ;
struct bnad {int dummy; } ;
struct bna_tcb {scalar_t__* hw_consumer_index; scalar_t__ consumer_index; scalar_t__ q_depth; TYPE_1__* txq; int flags; struct bnad_tx_unmap* unmap_q; } ;
struct TYPE_2__ {int tx_bytes; int tx_packets; } ;


 int BNAD_TXQ_TX_STARTED ;
 scalar_t__ BNA_QE_IN_USE_CNT (struct bna_tcb*,scalar_t__) ;
 scalar_t__ BNA_Q_INDEX_CHANGE (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ BNA_TXQ_WI_NEEDED (int ) ;
 int BUG_ON (int) ;
 scalar_t__ bnad_tx_buff_unmap (struct bnad*,struct bnad_tx_unmap*,scalar_t__,scalar_t__) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static u32
bnad_txcmpl_process(struct bnad *bnad, struct bna_tcb *tcb)
{
 u32 sent_packets = 0, sent_bytes = 0;
 u32 wis, unmap_wis, hw_cons, cons, q_depth;
 struct bnad_tx_unmap *unmap_q = tcb->unmap_q;
 struct bnad_tx_unmap *unmap;
 struct sk_buff *skb;


 if (!test_bit(BNAD_TXQ_TX_STARTED, &tcb->flags))
  return 0;

 hw_cons = *(tcb->hw_consumer_index);
 cons = tcb->consumer_index;
 q_depth = tcb->q_depth;

 wis = BNA_Q_INDEX_CHANGE(cons, hw_cons, q_depth);
 BUG_ON(!(wis <= BNA_QE_IN_USE_CNT(tcb, tcb->q_depth)));

 while (wis) {
  unmap = &unmap_q[cons];

  skb = unmap->skb;

  sent_packets++;
  sent_bytes += skb->len;

  unmap_wis = BNA_TXQ_WI_NEEDED(unmap->nvecs);
  wis -= unmap_wis;

  cons = bnad_tx_buff_unmap(bnad, unmap_q, q_depth, cons);
  dev_kfree_skb_any(skb);
 }


 tcb->consumer_index = hw_cons;

 tcb->txq->tx_packets += sent_packets;
 tcb->txq->tx_bytes += sent_bytes;

 return sent_packets;
}
