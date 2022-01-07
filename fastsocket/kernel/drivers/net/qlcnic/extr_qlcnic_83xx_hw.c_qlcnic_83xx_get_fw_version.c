
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_adapter {int fw_version; struct pci_dev* pdev; } ;
struct pci_dev {int dev; } ;


 int QLCNIC_FW_VERSION_MAJOR ;
 int QLCNIC_FW_VERSION_MINOR ;
 int QLCNIC_FW_VERSION_SUB ;
 int QLCNIC_LINUX_VERSIONID ;
 int QLCNIC_VERSION_CODE (int ,int ,int ) ;
 int QLC_SHARED_REG_RD32 (struct qlcnic_adapter*,int ) ;
 int dev_info (int *,char*,int ,int ,int ,int ) ;

int qlcnic_83xx_get_fw_version(struct qlcnic_adapter *adapter)
{
 u32 fw_major, fw_minor, fw_build;
 struct pci_dev *pdev = adapter->pdev;

 fw_major = QLC_SHARED_REG_RD32(adapter, QLCNIC_FW_VERSION_MAJOR);
 fw_minor = QLC_SHARED_REG_RD32(adapter, QLCNIC_FW_VERSION_MINOR);
 fw_build = QLC_SHARED_REG_RD32(adapter, QLCNIC_FW_VERSION_SUB);
 adapter->fw_version = QLCNIC_VERSION_CODE(fw_major, fw_minor, fw_build);

 dev_info(&pdev->dev, "Driver v%s, firmware version %d.%d.%d\n",
   QLCNIC_LINUX_VERSIONID, fw_major, fw_minor, fw_build);

 return adapter->fw_version;
}
