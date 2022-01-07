
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mite; } ;
struct TYPE_3__ {scalar_t__ daq_io_addr; } ;


 scalar_t__ Master_Interrupt_Control ;
 TYPE_2__* private (struct comedi_device*) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static int ni_65xx_intr_cancel(struct comedi_device *dev,
          struct comedi_subdevice *s)
{
 writeb(0x00,
        private(dev)->mite->daq_io_addr + Master_Interrupt_Control);

 return 0;
}
