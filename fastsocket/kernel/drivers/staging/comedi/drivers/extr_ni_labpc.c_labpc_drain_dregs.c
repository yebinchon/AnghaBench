
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ current_transfer; } ;


 TYPE_1__* devpriv ;
 scalar_t__ isa_dma_transfer ;
 int labpc_drain_dma (struct comedi_device*) ;
 int labpc_drain_fifo (struct comedi_device*) ;

__attribute__((used)) static void labpc_drain_dregs(struct comedi_device *dev)
{
 if (devpriv->current_transfer == isa_dma_transfer)
  labpc_drain_dma(dev);

 labpc_drain_fifo(dev);
}
