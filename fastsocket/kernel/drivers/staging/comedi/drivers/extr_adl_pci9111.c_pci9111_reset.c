
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ timer_divisor_2; scalar_t__ timer_divisor_1; int lcr_io_base; } ;


 TYPE_1__* dev_private ;
 int pci9111_autoscan_set (struct comedi_device*,int) ;
 int pci9111_pretrigger_set (struct comedi_device*,int) ;
 int pci9111_timer_set (struct comedi_device*) ;
 int pci9111_trigger_source_set (struct comedi_device*,int ) ;
 int plx9050_interrupt_control (int ,int,int,int,int,int) ;
 int software ;

__attribute__((used)) static int pci9111_reset(struct comedi_device *dev)
{


 plx9050_interrupt_control(dev_private->lcr_io_base, 1, 1, 1,
      1, 0);

 pci9111_trigger_source_set(dev, software);
 pci9111_pretrigger_set(dev, 0);
 pci9111_autoscan_set(dev, 0);



 dev_private->timer_divisor_1 = 0;
 dev_private->timer_divisor_2 = 0;

 pci9111_timer_set(dev);

 return 0;
}
