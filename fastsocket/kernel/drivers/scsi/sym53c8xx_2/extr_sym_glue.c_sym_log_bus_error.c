
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_data {struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int KERN_WARNING ;
 int PCI_STATUS ;
 int pci_read_config_word (struct pci_dev*,int ,unsigned short*) ;
 int pci_write_config_word (struct pci_dev*,int ,unsigned short) ;
 int shost_printk (int ,struct Scsi_Host*,char*,unsigned short) ;
 struct sym_data* shost_priv (struct Scsi_Host*) ;

void sym_log_bus_error(struct Scsi_Host *shost)
{
 struct sym_data *sym_data = shost_priv(shost);
 struct pci_dev *pdev = sym_data->pdev;
 unsigned short pci_sts;
 pci_read_config_word(pdev, PCI_STATUS, &pci_sts);
 if (pci_sts & 0xf900) {
  pci_write_config_word(pdev, PCI_STATUS, pci_sts);
  shost_printk(KERN_WARNING, shost,
   "PCI bus error: status = 0x%04x\n", pci_sts & 0xf900);
 }
}
