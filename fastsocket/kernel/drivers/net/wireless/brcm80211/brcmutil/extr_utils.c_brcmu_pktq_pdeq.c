
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct pktq {int len; TYPE_1__* q; } ;
struct TYPE_2__ {struct sk_buff_head skblist; } ;


 struct sk_buff* skb_dequeue (struct sk_buff_head*) ;

struct sk_buff *brcmu_pktq_pdeq(struct pktq *pq, int prec)
{
 struct sk_buff_head *q;
 struct sk_buff *p;

 q = &pq->q[prec].skblist;
 p = skb_dequeue(q);
 if (p == ((void*)0))
  return ((void*)0);

 pq->len--;
 return p;
}
