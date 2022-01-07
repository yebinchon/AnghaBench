
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int size; } ;
struct t4_wq {TYPE_1__ rq; } ;


 int T4_RQ_NUM_SLOTS ;

__attribute__((used)) static inline u16 t4_rq_wq_size(struct t4_wq *wq)
{
  return wq->rq.size * T4_RQ_NUM_SLOTS;
}
