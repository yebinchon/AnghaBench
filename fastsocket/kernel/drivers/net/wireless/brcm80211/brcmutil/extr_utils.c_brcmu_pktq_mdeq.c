
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct pktq {scalar_t__ len; int hi_prec; TYPE_1__* q; } ;
struct TYPE_2__ {struct sk_buff_head skblist; } ;


 struct sk_buff* skb_dequeue (struct sk_buff_head*) ;
 scalar_t__ skb_queue_empty (struct sk_buff_head*) ;

struct sk_buff *brcmu_pktq_mdeq(struct pktq *pq, uint prec_bmp,
          int *prec_out)
{
 struct sk_buff_head *q;
 struct sk_buff *p;
 int prec;

 if (pq->len == 0)
  return ((void*)0);

 while ((prec = pq->hi_prec) > 0 &&
        skb_queue_empty(&pq->q[prec].skblist))
  pq->hi_prec--;

 while ((prec_bmp & (1 << prec)) == 0 ||
        skb_queue_empty(&pq->q[prec].skblist))
  if (prec-- == 0)
   return ((void*)0);

 q = &pq->q[prec].skblist;
 p = skb_dequeue(q);
 if (p == ((void*)0))
  return ((void*)0);

 pq->len--;

 if (prec_out)
  *prec_out = prec;

 return p;
}
