
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {int timer_divisor_1; int timer_divisor_2; } ;


 int PCI9111_8254_BINARY_COUNTER ;
 int PCI9111_8254_COUNTER_0 ;
 int PCI9111_8254_COUNTER_1 ;
 int PCI9111_8254_COUNTER_2 ;
 int PCI9111_8254_MODE_0 ;
 int PCI9111_8254_MODE_2 ;
 int PCI9111_8254_READ_LOAD_LSB_MSB ;
 TYPE_1__* dev_private ;
 int pci9111_8254_control_set (int) ;
 int pci9111_8254_counter_1_set (int ) ;
 int pci9111_8254_counter_2_set (int ) ;
 int udelay (int) ;

__attribute__((used)) static void pci9111_timer_set(struct comedi_device *dev)
{
 pci9111_8254_control_set(PCI9111_8254_COUNTER_0 |
     PCI9111_8254_READ_LOAD_LSB_MSB |
     PCI9111_8254_MODE_0 |
     PCI9111_8254_BINARY_COUNTER);

 pci9111_8254_control_set(PCI9111_8254_COUNTER_1 |
     PCI9111_8254_READ_LOAD_LSB_MSB |
     PCI9111_8254_MODE_2 |
     PCI9111_8254_BINARY_COUNTER);

 pci9111_8254_control_set(PCI9111_8254_COUNTER_2 |
     PCI9111_8254_READ_LOAD_LSB_MSB |
     PCI9111_8254_MODE_2 |
     PCI9111_8254_BINARY_COUNTER);

 udelay(1);

 pci9111_8254_counter_2_set(dev_private->timer_divisor_2);
 pci9111_8254_counter_1_set(dev_private->timer_divisor_1);
}
