
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cq_context; int (* comp_handler ) (TYPE_1__*,int ) ;} ;
struct ehca_cq {int cb_lock; TYPE_1__ ib_cq; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static inline void comp_event_callback(struct ehca_cq *cq)
{
 if (!cq->ib_cq.comp_handler)
  return;

 spin_lock(&cq->cb_lock);
 cq->ib_cq.comp_handler(&cq->ib_cq, cq->ib_cq.cq_context);
 spin_unlock(&cq->cb_lock);

 return;
}
