
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_hw_data {int pci_attr; } ;


 int BIT_10 ;
 int BIT_8 ;
 int BIT_9 ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static char *
qla2x00_pci_info_str(struct scsi_qla_host *vha, char *str)
{
 struct qla_hw_data *ha = vha->hw;
 static char *pci_bus_modes[] = {
  "33", "66", "100", "133",
 };
 uint16_t pci_bus;

 strcpy(str, "PCI");
 pci_bus = (ha->pci_attr & (BIT_9 | BIT_10)) >> 9;
 if (pci_bus) {
  strcat(str, "-X (");
  strcat(str, pci_bus_modes[pci_bus]);
 } else {
  pci_bus = (ha->pci_attr & BIT_8) >> 8;
  strcat(str, " (");
  strcat(str, pci_bus_modes[pci_bus]);
 }
 strcat(str, " MHz)");

 return (str);
}
