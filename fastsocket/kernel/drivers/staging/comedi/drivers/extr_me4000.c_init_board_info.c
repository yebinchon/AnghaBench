
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int irq; int device; int vendor; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int irq; int device_id; int vendor_id; int hw_revision; int serial_no; } ;


 int CALL_PDEBUG (char*) ;
 int PCIBIOS_SUCCESSFUL ;
 TYPE_1__* info ;
 int pci_read_config_byte (struct pci_dev*,int,int *) ;
 int pci_read_config_dword (struct pci_dev*,int,int *) ;

__attribute__((used)) static int init_board_info(struct comedi_device *dev, struct pci_dev *pci_dev_p)
{
 int result;

 CALL_PDEBUG("In init_board_info()\n");






 result = pci_read_config_dword(pci_dev_p, 0x2C, &info->serial_no);
 if (result != PCIBIOS_SUCCESSFUL)
  return result;


 result = pci_read_config_byte(pci_dev_p, 0x08, &info->hw_revision);
 if (result != PCIBIOS_SUCCESSFUL)
  return result;


 info->vendor_id = pci_dev_p->vendor;


 info->device_id = pci_dev_p->device;


 info->irq = pci_dev_p->irq;

 return 0;
}
