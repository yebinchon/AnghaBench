
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge_txq {int cidx; int in_use; scalar_t__ size; TYPE_1__* stat; } ;
struct TYPE_2__ {int cidx; } ;


 int ntohs (int ) ;

__attribute__((used)) static inline void reclaim_completed_tx_imm(struct sge_txq *q)
{
 int hw_cidx = ntohs(q->stat->cidx);
 int reclaim = hw_cidx - q->cidx;

 if (reclaim < 0)
  reclaim += q->size;

 q->in_use -= reclaim;
 q->cidx = hw_cidx;
}
