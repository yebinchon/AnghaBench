
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ main_iobase; } ;


 scalar_t__ DAC_CONTROL0_REG ;
 int abort_dma (struct comedi_device*,int ) ;
 TYPE_1__* priv (struct comedi_device*) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int ao_cancel(struct comedi_device *dev, struct comedi_subdevice *s)
{
 writew(0x0, priv(dev)->main_iobase + DAC_CONTROL0_REG);
 abort_dma(dev, 0);
 return 0;
}
