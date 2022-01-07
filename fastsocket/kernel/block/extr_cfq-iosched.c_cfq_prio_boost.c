
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_queue {scalar_t__ ioprio; scalar_t__ org_ioprio; int org_ioprio_class; int ioprio_class; } ;


 int IOPRIO_CLASS_BE ;
 scalar_t__ IOPRIO_NORM ;
 scalar_t__ cfq_class_idle (struct cfq_queue*) ;
 scalar_t__ has_fs_excl () ;

__attribute__((used)) static void cfq_prio_boost(struct cfq_queue *cfqq)
{
 if (has_fs_excl()) {




  if (cfq_class_idle(cfqq))
   cfqq->ioprio_class = IOPRIO_CLASS_BE;
  if (cfqq->ioprio > IOPRIO_NORM)
   cfqq->ioprio = IOPRIO_NORM;
 } else {



  cfqq->ioprio_class = cfqq->org_ioprio_class;
  cfqq->ioprio = cfqq->org_ioprio;
 }
}
