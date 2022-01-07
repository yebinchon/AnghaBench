
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct sge_rspq {int rx_queue; } ;
struct sge_qset {int napi; } ;


 int __skb_queue_tail (int *,struct sk_buff*) ;
 int napi_schedule (int *) ;
 struct sge_qset* rspq_to_qset (struct sge_rspq*) ;
 int skb_queue_empty (int *) ;

__attribute__((used)) static inline void offload_enqueue(struct sge_rspq *q, struct sk_buff *skb)
{
 int was_empty = skb_queue_empty(&q->rx_queue);

 __skb_queue_tail(&q->rx_queue, skb);

 if (was_empty) {
  struct sge_qset *qs = rspq_to_qset(q);

  napi_schedule(&qs->napi);
 }
}
