
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_hw_data {int pdev; } ;


 int PCI_CAP_ID_EXP ;
 int pci_find_capability (int ,int ) ;
 int strcpy (char*,char*) ;

char *
qlafx00_pci_info_str(struct scsi_qla_host *vha, char *str)
{
 struct qla_hw_data *ha = vha->hw;
 int pcie_reg;

 pcie_reg = pci_find_capability(ha->pdev, PCI_CAP_ID_EXP);
 if (pcie_reg) {
  strcpy(str, "PCIe iSA");
  return str;
 }
 return str;
}
