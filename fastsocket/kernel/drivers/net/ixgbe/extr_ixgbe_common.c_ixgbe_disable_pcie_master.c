
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_2__ {int flags; } ;
struct ixgbe_hw {TYPE_1__ mac; struct ixgbe_adapter* back; } ;
struct ixgbe_adapter {int pdev; } ;
typedef int s32 ;


 int IXGBE_CTRL ;
 int IXGBE_CTRL_GIO_DIS ;
 int IXGBE_ERR_MASTER_REQUESTS_PENDING ;
 int IXGBE_FLAGS_DOUBLE_RESET_REQUIRED ;
 int IXGBE_PCI_DEVICE_STATUS ;
 int IXGBE_PCI_DEVICE_STATUS_TRANSACTION_PENDING ;
 scalar_t__ IXGBE_PCI_MASTER_DISABLE_TIMEOUT ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_STATUS ;
 int IXGBE_STATUS_GIO ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 int pci_read_config_word (int ,int ,int*) ;
 int udelay (int) ;

__attribute__((used)) static s32 ixgbe_disable_pcie_master(struct ixgbe_hw *hw)
{
 struct ixgbe_adapter *adapter = hw->back;
 s32 status = 0;
 u32 i;
 u16 value;


 IXGBE_WRITE_REG(hw, IXGBE_CTRL, IXGBE_CTRL_GIO_DIS);


 if (!(IXGBE_READ_REG(hw, IXGBE_STATUS) & IXGBE_STATUS_GIO))
  goto out;


 for (i = 0; i < IXGBE_PCI_MASTER_DISABLE_TIMEOUT; i++) {
  udelay(100);
  if (!(IXGBE_READ_REG(hw, IXGBE_STATUS) & IXGBE_STATUS_GIO))
   goto out;
 }
 hw_dbg(hw, "GIO Master Disable bit didn't clear - requesting resets\n");
 hw->mac.flags |= IXGBE_FLAGS_DOUBLE_RESET_REQUIRED;





 for (i = 0; i < IXGBE_PCI_MASTER_DISABLE_TIMEOUT; i++) {
  udelay(100);
  pci_read_config_word(adapter->pdev, IXGBE_PCI_DEVICE_STATUS,
        &value);
  if (!(value & IXGBE_PCI_DEVICE_STATUS_TRANSACTION_PENDING))
   goto out;
 }

 hw_dbg(hw, "PCIe transaction pending bit also did not clear.\n");
 status = IXGBE_ERR_MASTER_REQUESTS_PENDING;

out:
 return status;
}
