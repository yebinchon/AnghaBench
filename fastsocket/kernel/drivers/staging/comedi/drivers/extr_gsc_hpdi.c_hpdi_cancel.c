
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ hpdi_iobase; } ;


 int BOARD_CONTROL_REG ;
 scalar_t__ INTERRUPT_CONTROL_REG ;
 int abort_dma (struct comedi_device*,int ) ;
 int hpdi_writel (struct comedi_device*,int ,int ) ;
 TYPE_1__* priv (struct comedi_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int hpdi_cancel(struct comedi_device *dev, struct comedi_subdevice *s)
{
 hpdi_writel(dev, 0, BOARD_CONTROL_REG);

 writel(0, priv(dev)->hpdi_iobase + INTERRUPT_CONTROL_REG);

 abort_dma(dev, 0);

 return 0;
}
