
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int (* read_byte ) (scalar_t__) ;int (* write_byte ) (int,scalar_t__) ;} ;


 scalar_t__ ADC_CLEAR_REG ;
 scalar_t__ ADC_FIFO_REG ;
 TYPE_1__* devpriv ;
 int stub1 (int,scalar_t__) ;
 int stub2 (scalar_t__) ;
 int stub3 (scalar_t__) ;

__attribute__((used)) static void labpc_clear_adc_fifo(const struct comedi_device *dev)
{
 devpriv->write_byte(0x1, dev->iobase + ADC_CLEAR_REG);
 devpriv->read_byte(dev->iobase + ADC_FIFO_REG);
 devpriv->read_byte(dev->iobase + ADC_FIFO_REG);
}
