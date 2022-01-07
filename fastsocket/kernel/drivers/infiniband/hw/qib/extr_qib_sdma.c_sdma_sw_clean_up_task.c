
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_pportdata {int sdma_lock; scalar_t__ sdma_generation; scalar_t__* sdma_head_dma; scalar_t__ sdma_descq_head; scalar_t__ sdma_descq_tail; int sdma_descq_added; int sdma_descq_removed; } ;


 int __qib_sdma_process_event (struct qib_pportdata*,int ) ;
 int clear_sdma_activelist (struct qib_pportdata*) ;
 int qib_sdma_event_e40_sw_cleaned ;
 int qib_sdma_make_progress (struct qib_pportdata*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sdma_sw_clean_up_task(unsigned long opaque)
{
 struct qib_pportdata *ppd = (struct qib_pportdata *) opaque;
 unsigned long flags;

 spin_lock_irqsave(&ppd->sdma_lock, flags);
 qib_sdma_make_progress(ppd);

 clear_sdma_activelist(ppd);





 ppd->sdma_descq_removed = ppd->sdma_descq_added;






 ppd->sdma_descq_tail = 0;
 ppd->sdma_descq_head = 0;
 ppd->sdma_head_dma[0] = 0;
 ppd->sdma_generation = 0;

 __qib_sdma_process_event(ppd, qib_sdma_event_e40_sw_cleaned);

 spin_unlock_irqrestore(&ppd->sdma_lock, flags);
}
