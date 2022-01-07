
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge_txq {size_t size; unsigned int cntxt_id; int db_lock; int * desc; void* stat; scalar_t__ restarts; scalar_t__ stops; scalar_t__ pidx; scalar_t__ cidx; scalar_t__ in_use; } ;
struct TYPE_2__ {unsigned int egr_start; struct sge_txq** egr_map; } ;
struct adapter {TYPE_1__ sge; } ;


 int spin_lock_init (int *) ;

__attribute__((used)) static void init_txq(struct adapter *adap, struct sge_txq *q, unsigned int id)
{
 q->in_use = 0;
 q->cidx = q->pidx = 0;
 q->stops = q->restarts = 0;
 q->stat = (void *)&q->desc[q->size];
 q->cntxt_id = id;
 spin_lock_init(&q->db_lock);
 adap->sge.egr_map[id - adap->sge.egr_start] = q;
}
