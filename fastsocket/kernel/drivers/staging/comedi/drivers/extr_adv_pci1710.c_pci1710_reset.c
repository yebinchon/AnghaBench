
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {int cardtype; } ;


 int DPRINTK (char*) ;

 int pci171x_reset (struct comedi_device*) ;
 int pci1720_reset (struct comedi_device*) ;
 TYPE_1__* this_board ;

__attribute__((used)) static int pci1710_reset(struct comedi_device *dev)
{
 DPRINTK("adv_pci1710 EDBG: BGN: pci1710_reset(...)\n");
 switch (this_board->cardtype) {
 case 128:
  return pci1720_reset(dev);
 default:
  return pci171x_reset(dev);
 }
 DPRINTK("adv_pci1710 EDBG: END: pci1710_reset(...)\n");
}
