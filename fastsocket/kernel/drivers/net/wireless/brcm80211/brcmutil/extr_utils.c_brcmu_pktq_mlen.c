
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
struct pktq {int hi_prec; TYPE_2__* q; } ;
struct TYPE_3__ {scalar_t__ qlen; } ;
struct TYPE_4__ {TYPE_1__ skblist; } ;



int brcmu_pktq_mlen(struct pktq *pq, uint prec_bmp)
{
 int prec, len;

 len = 0;

 for (prec = 0; prec <= pq->hi_prec; prec++)
  if (prec_bmp & (1 << prec))
   len += pq->q[prec].skblist.qlen;

 return len;
}
