
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef int u_char ;
struct TYPE_3__ {scalar_t__ pci_cfg; } ;
struct TYPE_4__ {TYPE_1__ diva; } ;
struct IsdnCardState {int lock; TYPE_2__ hw; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PITA_INT0_STATUS ;
 int interrupt_ipacx (struct IsdnCardState*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static irqreturn_t
diva_irq_ipacx_pci(int intno, void *dev_id)
{
 struct IsdnCardState *cs = dev_id;
 u_char val;
 u_char *cfg;
 u_long flags;

 spin_lock_irqsave(&cs->lock, flags);
 cfg = (u_char *) cs->hw.diva.pci_cfg;
 val = *cfg;
 if (!(val &PITA_INT0_STATUS)) {
  spin_unlock_irqrestore(&cs->lock, flags);
  return IRQ_NONE;
 }
  interrupt_ipacx(cs);
 *cfg = PITA_INT0_STATUS;
 spin_unlock_irqrestore(&cs->lock, flags);
 return IRQ_HANDLED;
}
