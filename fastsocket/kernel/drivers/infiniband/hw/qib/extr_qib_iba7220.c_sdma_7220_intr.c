
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int current_state; } ;
struct qib_pportdata {int sdma_lock; TYPE_1__ sdma_state; } ;


 int __qib_sdma_intr (struct qib_pportdata*) ;
 int __qib_sdma_process_event (struct qib_pportdata*,int ) ;
 int qib_sdma_event_e20_hw_started ;
 int qib_sdma_event_e60_hw_halted ;







 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sdma_7220_intr(struct qib_pportdata *ppd, u64 istat)
{
 unsigned long flags;

 spin_lock_irqsave(&ppd->sdma_lock, flags);

 switch (ppd->sdma_state.current_state) {
 case 134:
  break;

 case 133:
  __qib_sdma_process_event(ppd, qib_sdma_event_e20_hw_started);
  break;

 case 132:
  break;

 case 131:
  break;

 case 130:
  break;

 case 129:
  __qib_sdma_process_event(ppd, qib_sdma_event_e60_hw_halted);
  break;

 case 128:

  __qib_sdma_intr(ppd);
  break;
 }
 spin_unlock_irqrestore(&ppd->sdma_lock, flags);
}
