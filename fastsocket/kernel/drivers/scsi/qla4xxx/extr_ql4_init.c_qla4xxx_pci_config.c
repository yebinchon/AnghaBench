
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct scsi_qla_host {int pdev; } ;


 int KERN_INFO ;
 int PCI_COMMAND ;
 int PCI_COMMAND_INTX_DISABLE ;
 int PCI_COMMAND_PARITY ;
 int PCI_COMMAND_SERR ;
 int pci_read_config_word (int ,int ,int*) ;
 int pci_set_master (int ) ;
 int pci_set_mwi (int ) ;
 int pci_write_config_word (int ,int ,int) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*) ;

void qla4xxx_pci_config(struct scsi_qla_host *ha)
{
 uint16_t w;
 int status;

 ql4_printk(KERN_INFO, ha, "Configuring PCI space...\n");

 pci_set_master(ha->pdev);
 status = pci_set_mwi(ha->pdev);





 pci_read_config_word(ha->pdev, PCI_COMMAND, &w);
 w |= PCI_COMMAND_PARITY | PCI_COMMAND_SERR;
 w &= ~PCI_COMMAND_INTX_DISABLE;
 pci_write_config_word(ha->pdev, PCI_COMMAND, w);
}
