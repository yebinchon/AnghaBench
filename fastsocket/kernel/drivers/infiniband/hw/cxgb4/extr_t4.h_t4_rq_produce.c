
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int pidx; int size; int wq_pidx; int in_use; } ;
struct t4_wq {TYPE_1__ rq; } ;


 scalar_t__ DIV_ROUND_UP (int,int ) ;
 int T4_EQ_ENTRY_SIZE ;
 int T4_RQ_NUM_SLOTS ;

__attribute__((used)) static inline void t4_rq_produce(struct t4_wq *wq, u8 len16)
{
 wq->rq.in_use++;
 if (++wq->rq.pidx == wq->rq.size)
  wq->rq.pidx = 0;
 wq->rq.wq_pidx += DIV_ROUND_UP(len16*16, T4_EQ_ENTRY_SIZE);
 if (wq->rq.wq_pidx >= wq->rq.size * T4_RQ_NUM_SLOTS)
  wq->rq.wq_pidx %= wq->rq.size * T4_RQ_NUM_SLOTS;
}
