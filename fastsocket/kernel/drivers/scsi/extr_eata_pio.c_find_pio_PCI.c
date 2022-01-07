
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct get_conf {scalar_t__ FORCADR; } ;


 int DBG (int,int ) ;
 scalar_t__ DBG_PCI ;
 scalar_t__ DBG_PROBE ;
 scalar_t__* EISAbases ;
 unsigned long IORESOURCE_MEM ;
 unsigned long* ISAbases ;
 unsigned long MAXISA ;
 int PCI_DEVICE_ID_DPT ;
 int PCI_VENDOR_ID_DPT ;
 scalar_t__ check_blink_state (unsigned long) ;
 scalar_t__ get_pio_conf_PIO (unsigned long,struct get_conf*) ;
 int inb (unsigned long) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int ,struct pci_dev*) ;
 int pci_name (struct pci_dev*) ;
 unsigned long pci_resource_flags (struct pci_dev*,int ) ;
 unsigned long pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_master (struct pci_dev*) ;
 int printk (char*,...) ;
 int register_pio_HBA (unsigned long,struct get_conf*,struct pci_dev*) ;
 int release_region (unsigned long,int) ;

__attribute__((used)) static void find_pio_PCI(struct get_conf *buf)
{

 printk("eata_dma: kernel PCI support not enabled. Skipping scan for PCI HBAs.\n");
}
