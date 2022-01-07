
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u64 ;
struct sk_buff {unsigned int priority; int destructor; int dev; scalar_t__ head; int data; } ;
struct TYPE_13__ {size_t pidx; int size; TYPE_1__* sdesc; int * desc; } ;
struct TYPE_14__ {int lock; } ;
struct sge_ofld_txq {TYPE_2__ q; TYPE_6__* adap; TYPE_5__ sendq; int full; } ;
typedef int dma_addr_t ;
struct TYPE_15__ {int * port; int pdev_dev; } ;
struct TYPE_12__ {struct sk_buff* skb; } ;


 int BUG_ON (int) ;
 int TXQ_STOP_THRES ;
 int __skb_unlink (struct sk_buff*,TYPE_5__*) ;
 int deferred_unmap_destructor ;
 unsigned int flits_to_desc (unsigned int) ;
 int inline_tx_skb (struct sk_buff*,TYPE_2__*,int *) ;
 scalar_t__ is_ofld_imm (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (unsigned int) ;
 scalar_t__ map_skb (int ,struct sk_buff*,int *) ;
 int memcpy (int *,int ,int) ;
 scalar_t__ need_skb_unmap () ;
 int ofldtxq_stop (struct sge_ofld_txq*,struct sk_buff*) ;
 int reclaim_completed_tx (TYPE_6__*,TYPE_2__*,int) ;
 int ring_tx_db (TYPE_6__*,TYPE_2__*,unsigned int) ;
 struct sk_buff* skb_peek (TYPE_5__*) ;
 int skb_transport_offset (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int txq_advance (TYPE_2__*,unsigned int) ;
 unsigned int txq_avail (TYPE_2__*) ;
 int txq_stop_maperr (struct sge_ofld_txq*) ;
 scalar_t__ unlikely (int) ;
 int write_sgl (struct sk_buff*,TYPE_2__*,void*,int *,int,int *) ;

__attribute__((used)) static void service_ofldq(struct sge_ofld_txq *q)
{
 u64 *pos;
 int credits;
 struct sk_buff *skb;
 unsigned int written = 0;
 unsigned int flits, ndesc;

 while ((skb = skb_peek(&q->sendq)) != ((void*)0) && !q->full) {




  spin_unlock(&q->sendq.lock);

  reclaim_completed_tx(q->adap, &q->q, 0);

  flits = skb->priority;
  ndesc = flits_to_desc(flits);
  credits = txq_avail(&q->q) - ndesc;
  BUG_ON(credits < 0);
  if (unlikely(credits < TXQ_STOP_THRES))
   ofldtxq_stop(q, skb);

  pos = (u64 *)&q->q.desc[q->q.pidx];
  if (is_ofld_imm(skb))
   inline_tx_skb(skb, &q->q, pos);
  else if (map_skb(q->adap->pdev_dev, skb,
     (dma_addr_t *)skb->head)) {
   txq_stop_maperr(q);
   spin_lock(&q->sendq.lock);
   break;
  } else {
   int last_desc, hdr_len = skb_transport_offset(skb);

   memcpy(pos, skb->data, hdr_len);
   write_sgl(skb, &q->q, (void *)pos + hdr_len,
      pos + flits, hdr_len,
      (dma_addr_t *)skb->head);

   if (need_skb_unmap()) {
    skb->dev = q->adap->port[0];
    skb->destructor = deferred_unmap_destructor;
   }

   last_desc = q->q.pidx + ndesc - 1;
   if (last_desc >= q->q.size)
    last_desc -= q->q.size;
   q->q.sdesc[last_desc].skb = skb;
  }

  txq_advance(&q->q, ndesc);
  written += ndesc;
  if (unlikely(written > 32)) {
   ring_tx_db(q->adap, &q->q, written);
   written = 0;
  }

  spin_lock(&q->sendq.lock);
  __skb_unlink(skb, &q->sendq);
  if (is_ofld_imm(skb))
   kfree_skb(skb);
 }
 if (likely(written))
  ring_tx_db(q->adap, &q->q, written);
}
