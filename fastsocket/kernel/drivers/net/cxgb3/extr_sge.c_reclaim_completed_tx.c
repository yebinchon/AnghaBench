
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_txq {unsigned int processed; unsigned int cleaned; unsigned int in_use; } ;
struct adapter {int dummy; } ;


 int free_tx_desc (struct adapter*,struct sge_txq*,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;

__attribute__((used)) static inline unsigned int reclaim_completed_tx(struct adapter *adapter,
      struct sge_txq *q,
      unsigned int chunk)
{
 unsigned int reclaim = q->processed - q->cleaned;

 reclaim = min(chunk, reclaim);
 if (reclaim) {
  free_tx_desc(adapter, q, reclaim);
  q->cleaned += reclaim;
  q->in_use -= reclaim;
 }
 return q->processed - q->cleaned;
}
