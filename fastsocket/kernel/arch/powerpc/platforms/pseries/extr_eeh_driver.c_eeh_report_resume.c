
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_driver {TYPE_1__* err_handler; } ;
struct pci_dev {int error_state; struct pci_driver* driver; } ;
struct TYPE_2__ {int (* resume ) (struct pci_dev*) ;} ;


 int eeh_enable_irq (struct pci_dev*) ;
 int pci_channel_io_normal ;
 int stub1 (struct pci_dev*) ;

__attribute__((used)) static int eeh_report_resume(struct pci_dev *dev, void *userdata)
{
 struct pci_driver *driver = dev->driver;

 dev->error_state = pci_channel_io_normal;

 if (!driver)
  return 0;

 eeh_enable_irq(dev);

 if (!driver->err_handler ||
     !driver->err_handler->resume)
  return 0;

 driver->err_handler->resume(dev);

 return 0;
}
