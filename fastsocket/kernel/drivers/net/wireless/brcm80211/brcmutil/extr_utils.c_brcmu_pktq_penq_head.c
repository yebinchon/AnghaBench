
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct pktq {int hi_prec; int len; TYPE_1__* q; } ;
struct TYPE_2__ {struct sk_buff_head skblist; } ;


 scalar_t__ pktq_full (struct pktq*) ;
 scalar_t__ pktq_pfull (struct pktq*,int) ;
 int skb_queue_head (struct sk_buff_head*,struct sk_buff*) ;

struct sk_buff *brcmu_pktq_penq_head(struct pktq *pq, int prec,
        struct sk_buff *p)
{
 struct sk_buff_head *q;

 if (pktq_full(pq) || pktq_pfull(pq, prec))
  return ((void*)0);

 q = &pq->q[prec].skblist;
 skb_queue_head(q, p);
 pq->len++;

 if (pq->hi_prec < prec)
  pq->hi_prec = (u8) prec;

 return p;
}
