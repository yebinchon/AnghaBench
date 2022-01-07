
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fritz_adapter {int isac; scalar_t__ io; } ;
typedef int irqreturn_t ;


 scalar_t__ AVM_STATUS0 ;
 unsigned char AVM_STATUS0_IRQ_HDLC ;
 unsigned char AVM_STATUS0_IRQ_ISAC ;
 unsigned char AVM_STATUS0_IRQ_MASK ;
 int DBG (int,char*,unsigned char) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int hdlc_irq (struct fritz_adapter*) ;
 unsigned char inb (scalar_t__) ;
 int isacsx_irq (int *) ;

__attribute__((used)) static irqreturn_t
fcpci2_irq(int intno, void *dev)
{
 struct fritz_adapter *adapter = dev;
 unsigned char val;

 val = inb(adapter->io + AVM_STATUS0);
 if (!(val & AVM_STATUS0_IRQ_MASK))

  return IRQ_NONE;
 DBG(2, "STATUS0 %#x", val);
 if (val & AVM_STATUS0_IRQ_ISAC)
  isacsx_irq(&adapter->isac);
 if (val & AVM_STATUS0_IRQ_HDLC)
  hdlc_irq(adapter);
 if (val & AVM_STATUS0_IRQ_ISAC)
  isacsx_irq(&adapter->isac);
 return IRQ_HANDLED;
}
