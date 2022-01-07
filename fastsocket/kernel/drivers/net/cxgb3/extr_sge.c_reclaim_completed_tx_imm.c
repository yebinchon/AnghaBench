
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_txq {unsigned int processed; unsigned int cleaned; unsigned int in_use; } ;



__attribute__((used)) static inline void reclaim_completed_tx_imm(struct sge_txq *q)
{
 unsigned int reclaim = q->processed - q->cleaned;

 q->in_use -= reclaim;
 q->cleaned += reclaim;
}
