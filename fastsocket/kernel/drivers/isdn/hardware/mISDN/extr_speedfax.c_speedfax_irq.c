
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sfax_hw {int lock; int name; int isac; int isar; int irqcnt; scalar_t__ cfg; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ISAC_ISTA ;
 int ISAR_IRQBIT ;
 int ISAR_IRQSTA ;
 int ReadISAC_IND (struct sfax_hw*,int ) ;
 int ReadISAR_IND (struct sfax_hw*,int ) ;
 int SFAX_TIGER_IRQ_BIT ;
 scalar_t__ TIGER_AUX_STATUS ;
 int inb (scalar_t__) ;
 int irqloops ;
 int mISDNisac_irq (int *,int) ;
 int mISDNisar_irq (int *) ;
 int pr_debug (char*,int ,int,int ) ;
 int pr_notice (char*,int ,int,int ) ;
 int smp_processor_id () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t
speedfax_irq(int intno, void *dev_id)
{
 struct sfax_hw *sf = dev_id;
 u8 val;
 int cnt = irqloops;

 spin_lock(&sf->lock);
 val = inb(sf->cfg + TIGER_AUX_STATUS);
 if (val & SFAX_TIGER_IRQ_BIT) {
  spin_unlock(&sf->lock);
  return IRQ_NONE;
 }
 sf->irqcnt++;
 val = ReadISAR_IND(sf, ISAR_IRQBIT);
Start_ISAR:
 if (val & ISAR_IRQSTA)
  mISDNisar_irq(&sf->isar);
 val = ReadISAC_IND(sf, ISAC_ISTA);
 if (val)
  mISDNisac_irq(&sf->isac, val);
 val = ReadISAR_IND(sf, ISAR_IRQBIT);
 if ((val & ISAR_IRQSTA) && cnt--)
  goto Start_ISAR;
 if (cnt < irqloops)
  pr_debug("%s: %d irqloops cpu%d\n", sf->name,
   irqloops - cnt, smp_processor_id());
 if (irqloops && !cnt)
  pr_notice("%s: %d IRQ LOOP cpu%d\n", sf->name,
   irqloops, smp_processor_id());
 spin_unlock(&sf->lock);
 return IRQ_HANDLED;
}
