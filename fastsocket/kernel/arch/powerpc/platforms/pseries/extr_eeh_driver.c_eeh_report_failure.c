
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_driver {TYPE_1__* err_handler; } ;
struct pci_dev {int error_state; struct pci_driver* driver; } ;
struct TYPE_2__ {int (* error_detected ) (struct pci_dev*,int ) ;} ;


 int eeh_disable_irq (struct pci_dev*) ;
 int pci_channel_io_perm_failure ;
 int stub1 (struct pci_dev*,int ) ;

__attribute__((used)) static int eeh_report_failure(struct pci_dev *dev, void *userdata)
{
 struct pci_driver *driver = dev->driver;

 dev->error_state = pci_channel_io_perm_failure;

 if (!driver)
  return 0;

 eeh_disable_irq(dev);

 if (!driver->err_handler ||
     !driver->err_handler->error_detected)
  return 0;

 driver->err_handler->error_detected(dev, pci_channel_io_perm_failure);

 return 0;
}
