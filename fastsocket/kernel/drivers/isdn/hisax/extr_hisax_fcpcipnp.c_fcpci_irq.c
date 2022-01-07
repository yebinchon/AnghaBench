
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fritz_adapter {int isac; scalar_t__ io; } ;
typedef int irqreturn_t ;


 unsigned char AVM_STATUS0_IRQ_HDLC ;
 unsigned char AVM_STATUS0_IRQ_ISAC ;
 unsigned char AVM_STATUS0_IRQ_MASK ;
 int DBG (int,char*,unsigned char) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int hdlc_irq (struct fritz_adapter*) ;
 unsigned char inb (scalar_t__) ;
 int isac_irq (int *) ;

__attribute__((used)) static irqreturn_t
fcpci_irq(int intno, void *dev)
{
 struct fritz_adapter *adapter = dev;
 unsigned char sval;

 sval = inb(adapter->io + 2);
 if ((sval & AVM_STATUS0_IRQ_MASK) == AVM_STATUS0_IRQ_MASK)

  return IRQ_NONE;
 DBG(2, "sval %#x", sval);
 if (!(sval & AVM_STATUS0_IRQ_ISAC))
  isac_irq(&adapter->isac);

 if (!(sval & AVM_STATUS0_IRQ_HDLC))
  hdlc_irq(adapter);
 return IRQ_HANDLED;
}
