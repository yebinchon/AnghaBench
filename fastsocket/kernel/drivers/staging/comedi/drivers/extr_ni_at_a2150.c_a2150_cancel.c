
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int irq_dma_bits; int dma; } ;


 int DMA_EN_BIT ;
 int DMA_INTR_EN_BIT ;
 scalar_t__ FIFO_RESET_REG ;
 scalar_t__ IRQ_DMA_CNTRL_REG ;
 TYPE_1__* devpriv ;
 int disable_dma (int ) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static int a2150_cancel(struct comedi_device *dev, struct comedi_subdevice *s)
{

 devpriv->irq_dma_bits &= ~DMA_INTR_EN_BIT & ~DMA_EN_BIT;
 outw(devpriv->irq_dma_bits, dev->iobase + IRQ_DMA_CNTRL_REG);


 disable_dma(devpriv->dma);


 outw(0, dev->iobase + FIFO_RESET_REG);

 return 0;
}
