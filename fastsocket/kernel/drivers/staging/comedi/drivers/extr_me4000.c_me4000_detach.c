
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ pci_dev_p; scalar_t__ plx_regbase; } ;


 int CALL_PDEBUG (char*) ;
 int comedi_pci_disable (scalar_t__) ;
 TYPE_1__* info ;
 int pci_dev_put (scalar_t__) ;
 int reset_board (struct comedi_device*) ;

__attribute__((used)) static int me4000_detach(struct comedi_device *dev)
{
 CALL_PDEBUG("In me4000_detach()\n");

 if (info) {
  if (info->pci_dev_p) {
   reset_board(dev);
   if (info->plx_regbase)
    comedi_pci_disable(info->pci_dev_p);
   pci_dev_put(info->pci_dev_p);
  }
 }

 return 0;
}
