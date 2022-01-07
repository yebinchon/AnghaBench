
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;
typedef int irqreturn_t ;


 int DAS16_INT ;
 scalar_t__ DAS16_STATUS ;
 int DEBUG_PRINT (char*) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int das16_interrupt (struct comedi_device*) ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t das16_dma_interrupt(int irq, void *d)
{
 int status;
 struct comedi_device *dev = d;

 status = inb(dev->iobase + DAS16_STATUS);

 if ((status & DAS16_INT) == 0) {
  DEBUG_PRINT("spurious interrupt\n");
  return IRQ_NONE;
 }


 outb(0x00, dev->iobase + DAS16_STATUS);
 das16_interrupt(dev);
 return IRQ_HANDLED;
}
