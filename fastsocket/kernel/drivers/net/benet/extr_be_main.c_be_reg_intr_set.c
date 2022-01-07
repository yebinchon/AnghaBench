
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct be_adapter {int pdev; } ;


 int MEMBAR_CTRL_INT_CTRL_HOSTINTR_MASK ;
 int PCICFG_MEMBAR_CTRL_INT_CTRL_OFFSET ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_dword (int ,int ,int) ;

__attribute__((used)) static void be_reg_intr_set(struct be_adapter *adapter, bool enable)
{
 u32 reg, enabled;

 pci_read_config_dword(adapter->pdev, PCICFG_MEMBAR_CTRL_INT_CTRL_OFFSET,
    &reg);
 enabled = reg & MEMBAR_CTRL_INT_CTRL_HOSTINTR_MASK;

 if (!enabled && enable)
  reg |= MEMBAR_CTRL_INT_CTRL_HOSTINTR_MASK;
 else if (enabled && !enable)
  reg &= ~MEMBAR_CTRL_INT_CTRL_HOSTINTR_MASK;
 else
  return;

 pci_write_config_dword(adapter->pdev,
   PCICFG_MEMBAR_CTRL_INT_CTRL_OFFSET, reg);
}
