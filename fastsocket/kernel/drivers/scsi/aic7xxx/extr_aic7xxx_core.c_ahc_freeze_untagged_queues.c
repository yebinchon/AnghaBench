
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int flags; int untagged_queue_lock; } ;


 int AHC_SCB_BTT ;

__attribute__((used)) static inline void
ahc_freeze_untagged_queues(struct ahc_softc *ahc)
{
 if ((ahc->flags & AHC_SCB_BTT) == 0)
  ahc->untagged_queue_lock++;
}
