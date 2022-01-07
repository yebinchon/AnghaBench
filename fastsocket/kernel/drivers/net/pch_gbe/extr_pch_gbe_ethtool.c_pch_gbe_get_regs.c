
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct pci_dev {int device; scalar_t__ revision; } ;
struct pch_gbe_hw {TYPE_1__* reg; } ;
struct pch_gbe_adapter {struct pch_gbe_hw hw; struct pci_dev* pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {int version; } ;
typedef int __u32 ;
struct TYPE_2__ {int INT_ST; } ;


 scalar_t__ PCH_GBE_MAC_REGS_LEN ;
 scalar_t__ PCH_GBE_PHY_REGS_LEN ;
 int ioread32 (int *) ;
 struct pch_gbe_adapter* netdev_priv (struct net_device*) ;
 int pch_gbe_hal_read_phy_reg (struct pch_gbe_hw*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static void pch_gbe_get_regs(struct net_device *netdev,
    struct ethtool_regs *regs, void *p)
{
 struct pch_gbe_adapter *adapter = netdev_priv(netdev);
 struct pch_gbe_hw *hw = &adapter->hw;
 struct pci_dev *pdev = adapter->pdev;
 u32 *regs_buff = p;
 u16 i, tmp;

 regs->version = 0x1000000 | (__u32)pdev->revision << 16 | pdev->device;
 for (i = 0; i < PCH_GBE_MAC_REGS_LEN; i++)
  *regs_buff++ = ioread32(&hw->reg->INT_ST + i);

 for (i = 0; i < PCH_GBE_PHY_REGS_LEN; i++) {
  pch_gbe_hal_read_phy_reg(&adapter->hw, i, &tmp);
  *regs_buff++ = tmp;
 }
}
