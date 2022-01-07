
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char ToPcInt; unsigned char volatile ToPcIntMetro; unsigned char volatile ToHyInt; } ;
typedef TYPE_1__ tErgDpram ;
typedef int irqreturn_t ;
struct TYPE_4__ {int hysdn_lock; int irq_queue; int hw_lock; TYPE_1__* dpram; scalar_t__ iobase; int irq_enabled; } ;
typedef TYPE_2__ hysdn_card ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ PCI9050_INTR_REG ;
 int PCI9050_INTR_REG_STAT1 ;
 int bytein (scalar_t__) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t
ergo_interrupt(int intno, void *dev_id)
{
 hysdn_card *card = dev_id;
 tErgDpram *dpr;
 unsigned long flags;
 unsigned char volatile b;

 if (!card)
  return IRQ_NONE;
 if (!card->irq_enabled)
  return IRQ_NONE;

 spin_lock_irqsave(&card->hysdn_lock, flags);

 if (!(bytein(card->iobase + PCI9050_INTR_REG) & PCI9050_INTR_REG_STAT1)) {
  spin_unlock_irqrestore(&card->hysdn_lock, flags);
  return IRQ_NONE;
 }

 dpr = card->dpram;
 b = dpr->ToPcInt;
 b |= dpr->ToPcIntMetro;
 b |= dpr->ToHyInt;


 if (!card->hw_lock)
  schedule_work(&card->irq_queue);
 spin_unlock_irqrestore(&card->hysdn_lock, flags);
 return IRQ_HANDLED;
}
