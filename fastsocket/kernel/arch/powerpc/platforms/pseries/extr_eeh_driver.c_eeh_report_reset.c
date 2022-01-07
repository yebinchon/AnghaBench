
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_driver {TYPE_1__* err_handler; } ;
struct pci_dev {int error_state; struct pci_driver* driver; } ;
typedef enum pci_ers_result { ____Placeholder_pci_ers_result } pci_ers_result ;
struct TYPE_2__ {int (* slot_reset ) (struct pci_dev*) ;} ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NEED_RESET ;
 int PCI_ERS_RESULT_NONE ;
 int PCI_ERS_RESULT_RECOVERED ;
 int eeh_enable_irq (struct pci_dev*) ;
 int pci_channel_io_normal ;
 int stub1 (struct pci_dev*) ;

__attribute__((used)) static int eeh_report_reset(struct pci_dev *dev, void *userdata)
{
 enum pci_ers_result rc, *res = userdata;
 struct pci_driver *driver = dev->driver;

 if (!driver)
  return 0;

 dev->error_state = pci_channel_io_normal;

 eeh_enable_irq(dev);

 if (!driver->err_handler ||
     !driver->err_handler->slot_reset)
  return 0;

 rc = driver->err_handler->slot_reset(dev);
 if ((*res == PCI_ERS_RESULT_NONE) ||
     (*res == PCI_ERS_RESULT_RECOVERED)) *res = rc;
 if (*res == PCI_ERS_RESULT_DISCONNECT &&
      rc == PCI_ERS_RESULT_NEED_RESET) *res = rc;

 return 0;
}
