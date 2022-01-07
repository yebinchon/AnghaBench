
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qlcnic_fw_dump {int * tmpl_hdr; } ;
struct qlcnic_hardware_context {struct qlcnic_fw_dump fw_dump; } ;
struct qlcnic_adapter {scalar_t__ fw_version; struct pci_dev* pdev; struct qlcnic_hardware_context* ahw; } ;
struct pci_dev {int dev; } ;


 int dev_info (int *,char*) ;
 scalar_t__ qlcnic_83xx_get_fw_version (struct qlcnic_adapter*) ;
 int qlcnic_fw_cmd_get_minidump_temp (struct qlcnic_adapter*) ;
 int vfree (int *) ;

void qlcnic_83xx_get_minidump_template(struct qlcnic_adapter *adapter)
{
 u32 prev_version, current_version;
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 struct qlcnic_fw_dump *fw_dump = &ahw->fw_dump;
 struct pci_dev *pdev = adapter->pdev;

 prev_version = adapter->fw_version;
 current_version = qlcnic_83xx_get_fw_version(adapter);

 if (fw_dump->tmpl_hdr == ((void*)0) || current_version > prev_version) {
  if (fw_dump->tmpl_hdr)
   vfree(fw_dump->tmpl_hdr);
  if (!qlcnic_fw_cmd_get_minidump_temp(adapter))
   dev_info(&pdev->dev, "Supports FW dump capability\n");
 }
}
