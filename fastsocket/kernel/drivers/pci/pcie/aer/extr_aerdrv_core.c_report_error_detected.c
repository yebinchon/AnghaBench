
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_error_handlers {int (* error_detected ) (struct pci_dev*,scalar_t__) ;} ;
struct TYPE_4__ {int sem; } ;
struct pci_dev {scalar_t__ error_state; int hdr_type; TYPE_2__ dev; TYPE_1__* driver; } ;
struct aer_broadcast_data {scalar_t__ state; int result; } ;
typedef int pci_ers_result_t ;
struct TYPE_3__ {struct pci_error_handlers* err_handler; } ;


 int KERN_DEBUG ;
 int PCI_ERS_RESULT_NONE ;
 int PCI_ERS_RESULT_NO_AER_DRIVER ;
 int PCI_HEADER_TYPE_BRIDGE ;
 int dev_printk (int ,TYPE_2__*,char*,char*) ;
 int down (int *) ;
 int merge_result (int ,int ) ;
 scalar_t__ pci_channel_io_frozen ;
 int stub1 (struct pci_dev*,scalar_t__) ;
 int up (int *) ;

__attribute__((used)) static int report_error_detected(struct pci_dev *dev, void *data)
{
 pci_ers_result_t vote;
 const struct pci_error_handlers *err_handler;
 struct aer_broadcast_data *result_data;
 result_data = (struct aer_broadcast_data *) data;

 down(&dev->dev.sem);
 dev->error_state = result_data->state;

 if (!dev->driver ||
  !dev->driver->err_handler ||
  !dev->driver->err_handler->error_detected) {
  if (result_data->state == pci_channel_io_frozen &&
   !(dev->hdr_type & PCI_HEADER_TYPE_BRIDGE)) {







   dev_printk(KERN_DEBUG, &dev->dev, "device has %s\n",
       dev->driver ?
       "no AER-aware driver" : "no driver");
  }
  if (!(dev->hdr_type & PCI_HEADER_TYPE_BRIDGE))
   vote = PCI_ERS_RESULT_NO_AER_DRIVER;
  else
   vote = PCI_ERS_RESULT_NONE;
 } else {
  err_handler = dev->driver->err_handler;
  vote = err_handler->error_detected(dev, result_data->state);
 }

 result_data->result = merge_result(result_data->result, vote);
 up(&dev->dev.sem);
 return 0;
}
