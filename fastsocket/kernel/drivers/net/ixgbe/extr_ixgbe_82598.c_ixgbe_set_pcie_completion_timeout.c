
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ixgbe_hw {struct ixgbe_adapter* back; } ;
struct ixgbe_adapter {int pdev; } ;


 int IXGBE_GCR ;
 int IXGBE_GCR_CAP_VER2 ;
 int IXGBE_GCR_CMPL_TMOUT_10ms ;
 int IXGBE_GCR_CMPL_TMOUT_MASK ;
 int IXGBE_GCR_CMPL_TMOUT_RESEND ;
 int IXGBE_PCI_DEVICE_CONTROL2 ;
 int IXGBE_PCI_DEVICE_CONTROL2_16ms ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int pci_read_config_word (int ,int ,int *) ;
 int pci_write_config_word (int ,int ,int ) ;

__attribute__((used)) static void ixgbe_set_pcie_completion_timeout(struct ixgbe_hw *hw)
{
 struct ixgbe_adapter *adapter = hw->back;
 u32 gcr = IXGBE_READ_REG(hw, IXGBE_GCR);
 u16 pcie_devctl2;


 if (gcr & IXGBE_GCR_CMPL_TMOUT_MASK)
  goto out;





 if (!(gcr & IXGBE_GCR_CAP_VER2)) {
  gcr |= IXGBE_GCR_CMPL_TMOUT_10ms;
  goto out;
 }






 pci_read_config_word(adapter->pdev,
                      IXGBE_PCI_DEVICE_CONTROL2, &pcie_devctl2);
 pcie_devctl2 |= IXGBE_PCI_DEVICE_CONTROL2_16ms;
 pci_write_config_word(adapter->pdev,
                       IXGBE_PCI_DEVICE_CONTROL2, pcie_devctl2);
out:

 gcr &= ~IXGBE_GCR_CMPL_TMOUT_RESEND;
 IXGBE_WRITE_REG(hw, IXGBE_GCR, gcr);
}
