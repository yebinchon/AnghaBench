
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fritzcard {int lock; int isac; int irqcnt; int name; scalar_t__ addr; } ;
typedef int irqreturn_t ;


 int AVM_STATUS0_IRQ_HDLC ;
 int AVM_STATUS0_IRQ_ISAC ;
 int AVM_STATUS0_IRQ_MASK ;
 int HDLC_irq_main (struct fritzcard*) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ISAC_ISTA ;
 int ReadISAC_V1 (struct fritzcard*,int ) ;
 int inb (scalar_t__) ;
 int mISDNisac_irq (int *,int) ;
 int pr_debug (char*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t
avm_fritz_interrupt(int intno, void *dev_id)
{
 struct fritzcard *fc = dev_id;
 u8 val;
 u8 sval;

 spin_lock(&fc->lock);
 sval = inb(fc->addr + 2);
 pr_debug("%s: irq stat0 %x\n", fc->name, sval);
 if ((sval & AVM_STATUS0_IRQ_MASK) == AVM_STATUS0_IRQ_MASK) {

  spin_unlock(&fc->lock);
  return IRQ_NONE;
 }
 fc->irqcnt++;

 if (!(sval & AVM_STATUS0_IRQ_ISAC)) {
  val = ReadISAC_V1(fc, ISAC_ISTA);
  mISDNisac_irq(&fc->isac, val);
 }
 if (!(sval & AVM_STATUS0_IRQ_HDLC))
  HDLC_irq_main(fc);
 spin_unlock(&fc->lock);
 return IRQ_HANDLED;
}
