
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint16_t ;
struct qla_hw_data {TYPE_3__* pdev; int chip_revision; } ;
struct TYPE_10__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;
struct TYPE_11__ {int revision; } ;


 int PCI_COMMAND ;
 int PCI_COMMAND_INTX_DISABLE ;
 int PCI_COMMAND_PARITY ;
 int PCI_COMMAND_SERR ;
 int QLA_SUCCESS ;
 int pci_disable_rom (TYPE_3__*) ;
 scalar_t__ pci_is_pcie (TYPE_3__*) ;
 int pci_read_config_word (TYPE_3__*,int ,int*) ;
 int pci_set_master (TYPE_3__*) ;
 int pci_try_set_mwi (TYPE_3__*) ;
 int pci_write_config_word (TYPE_3__*,int ,int) ;
 int pcie_set_readrq (TYPE_3__*,int) ;

int
qla25xx_pci_config(scsi_qla_host_t *vha)
{
 uint16_t w;
 struct qla_hw_data *ha = vha->hw;

 pci_set_master(ha->pdev);
 pci_try_set_mwi(ha->pdev);

 pci_read_config_word(ha->pdev, PCI_COMMAND, &w);
 w |= (PCI_COMMAND_PARITY | PCI_COMMAND_SERR);
 w &= ~PCI_COMMAND_INTX_DISABLE;
 pci_write_config_word(ha->pdev, PCI_COMMAND, w);


 if (pci_is_pcie(ha->pdev))
  pcie_set_readrq(ha->pdev, 4096);

 pci_disable_rom(ha->pdev);

 ha->chip_revision = ha->pdev->revision;

 return QLA_SUCCESS;
}
