
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int (* write_byte ) (int,scalar_t__) ;int dma_chan; } ;


 scalar_t__ DMATC_CLEAR_REG ;
 TYPE_1__* devpriv ;
 int enable_dma (int ) ;
 int labpc_drain_dma (struct comedi_device*) ;
 int stub1 (int,scalar_t__) ;

__attribute__((used)) static void handle_isa_dma(struct comedi_device *dev)
{
 labpc_drain_dma(dev);

 enable_dma(devpriv->dma_chan);


 devpriv->write_byte(0x1, dev->iobase + DMATC_CLEAR_REG);
}
