
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct atl1c_hw {TYPE_1__* adapter; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;


 int ATL1C_PCIE_L0S_L1_DISABLE ;
 int AT_READ_REG (struct atl1c_hw*,int ,int*) ;
 int AT_WRITE_REG (struct atl1c_hw*,int ,int) ;
 int LTSSM_ID_EN_WRO ;
 int PCI_COMMAND ;
 int PCI_COMMAND_INTX_DISABLE ;
 int PCI_COMMAND_IO ;
 int PCI_COMMAND_MASTER ;
 int PCI_COMMAND_MEMORY ;
 int PCI_D3cold ;
 int PCI_D3hot ;
 scalar_t__ PCI_ERR_UNCOR_SEVER ;
 int PCI_ERR_UNC_DLP ;
 int PCI_ERR_UNC_FCP ;
 int PCI_EXP_DEVSTA ;
 int PCI_EXP_DEVSTA_CED ;
 int PCI_EXP_DEVSTA_FED ;
 int PCI_EXP_DEVSTA_NFED ;
 int PCI_EXP_DEVSTA_URD ;
 int PCI_EXT_CAP_ID_ERR ;
 int REG_LTSSM_ID_CTRL ;
 int REG_WOL_CTRL ;
 int atl1c_disable_l0s_l1 (struct atl1c_hw*) ;
 int atl1c_pcie_patch (struct atl1c_hw*) ;
 int msleep (int) ;
 int pci_enable_wake (struct pci_dev*,int ,int ) ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,int) ;
 int pcie_capability_write_word (struct pci_dev*,int ,int) ;

__attribute__((used)) static void atl1c_reset_pcie(struct atl1c_hw *hw, u32 flag)
{
 u32 data;
 u32 pci_cmd;
 struct pci_dev *pdev = hw->adapter->pdev;
 int pos;

 AT_READ_REG(hw, PCI_COMMAND, &pci_cmd);
 pci_cmd &= ~PCI_COMMAND_INTX_DISABLE;
 pci_cmd |= (PCI_COMMAND_MEMORY | PCI_COMMAND_MASTER |
  PCI_COMMAND_IO);
 AT_WRITE_REG(hw, PCI_COMMAND, pci_cmd);




 pci_enable_wake(pdev, PCI_D3hot, 0);
 pci_enable_wake(pdev, PCI_D3cold, 0);

 AT_READ_REG(hw, REG_WOL_CTRL, &data);
 AT_WRITE_REG(hw, REG_WOL_CTRL, 0);




 pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_ERR);
 pci_read_config_dword(pdev, pos + PCI_ERR_UNCOR_SEVER, &data);
 data &= ~(PCI_ERR_UNC_DLP | PCI_ERR_UNC_FCP);
 pci_write_config_dword(pdev, pos + PCI_ERR_UNCOR_SEVER, data);

 pcie_capability_write_word(pdev, PCI_EXP_DEVSTA,
   PCI_EXP_DEVSTA_NFED |
   PCI_EXP_DEVSTA_FED |
   PCI_EXP_DEVSTA_CED |
   PCI_EXP_DEVSTA_URD);

 AT_READ_REG(hw, REG_LTSSM_ID_CTRL, &data);
 data &= ~LTSSM_ID_EN_WRO;
 AT_WRITE_REG(hw, REG_LTSSM_ID_CTRL, data);

 atl1c_pcie_patch(hw);
 if (flag & ATL1C_PCIE_L0S_L1_DISABLE)
  atl1c_disable_l0s_l1(hw);

 msleep(5);
}
