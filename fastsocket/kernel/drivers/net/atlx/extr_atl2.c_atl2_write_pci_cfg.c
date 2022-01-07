
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct atl2_hw {struct atl2_adapter* back; } ;
struct atl2_adapter {int pdev; } ;


 int pci_write_config_word (int ,int ,int ) ;

__attribute__((used)) static void atl2_write_pci_cfg(struct atl2_hw *hw, u32 reg, u16 *value)
{
 struct atl2_adapter *adapter = hw->back;
 pci_write_config_word(adapter->pdev, reg, *value);
}
