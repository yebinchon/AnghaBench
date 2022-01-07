
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int hdr_type; int error_state; int bus; int subordinate; int dev; } ;
struct aer_broadcast_data {int state; int result; } ;
typedef int pci_ers_result_t ;
typedef enum pci_channel_state { ____Placeholder_pci_channel_state } pci_channel_state ;


 int KERN_DEBUG ;
 int PCI_ERS_RESULT_CAN_RECOVER ;
 int PCI_ERS_RESULT_RECOVERED ;
 int PCI_HEADER_TYPE_BRIDGE ;
 int dev_printk (int ,int *,char*,char*) ;
 int pci_channel_io_normal ;
 int pci_cleanup_aer_uncorrect_error_status (struct pci_dev*) ;
 int pci_walk_bus (int ,int (*) (struct pci_dev*,void*),struct aer_broadcast_data*) ;
 int report_error_detected (struct pci_dev*,void*) ;
 int report_resume (struct pci_dev*,void*) ;

__attribute__((used)) static pci_ers_result_t broadcast_error_message(struct pci_dev *dev,
 enum pci_channel_state state,
 char *error_mesg,
 int (*cb)(struct pci_dev *, void *))
{
 struct aer_broadcast_data result_data;

 dev_printk(KERN_DEBUG, &dev->dev, "broadcast %s message\n", error_mesg);
 result_data.state = state;
 if (cb == report_error_detected)
  result_data.result = PCI_ERS_RESULT_CAN_RECOVER;
 else
  result_data.result = PCI_ERS_RESULT_RECOVERED;

 if (dev->hdr_type & PCI_HEADER_TYPE_BRIDGE) {






  if (cb == report_error_detected)
   dev->error_state = state;
  pci_walk_bus(dev->subordinate, cb, &result_data);
  if (cb == report_resume) {
   pci_cleanup_aer_uncorrect_error_status(dev);
   dev->error_state = pci_channel_io_normal;
  }
 } else {




  pci_walk_bus(dev->bus, cb, &result_data);
 }

 return result_data.result;
}
