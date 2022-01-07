
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_driver {TYPE_1__* err_handler; } ;
struct pci_dev {int error_state; struct pci_driver* driver; } ;
typedef enum pci_ers_result { ____Placeholder_pci_ers_result } pci_ers_result ;
struct TYPE_2__ {int (* error_detected ) (struct pci_dev*,int ) ;} ;


 int PCI_ERS_RESULT_NEED_RESET ;
 int PCI_ERS_RESULT_NONE ;
 int eeh_disable_irq (struct pci_dev*) ;
 int pci_channel_io_frozen ;
 int stub1 (struct pci_dev*,int ) ;

__attribute__((used)) static int eeh_report_error(struct pci_dev *dev, void *userdata)
{
 enum pci_ers_result rc, *res = userdata;
 struct pci_driver *driver = dev->driver;

 dev->error_state = pci_channel_io_frozen;

 if (!driver)
  return 0;

 eeh_disable_irq(dev);

 if (!driver->err_handler ||
     !driver->err_handler->error_detected)
  return 0;

 rc = driver->err_handler->error_detected (dev, pci_channel_io_frozen);


 if (rc == PCI_ERS_RESULT_NEED_RESET) *res = rc;
 if (*res == PCI_ERS_RESULT_NONE) *res = rc;

 return 0;
}
