
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pktq {int num_prec; } ;


 int brcmu_pktq_pflush (struct pktq*,int,int,int (*) (struct sk_buff*,void*),void*) ;

void brcmu_pktq_flush(struct pktq *pq, bool dir,
        bool (*fn)(struct sk_buff *, void *), void *arg)
{
 int prec;
 for (prec = 0; prec < pq->num_prec; prec++)
  brcmu_pktq_pflush(pq, prec, dir, fn, arg);
}
