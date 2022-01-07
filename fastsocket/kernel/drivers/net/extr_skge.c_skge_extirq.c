
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skge_port {int dummy; } ;
struct skge_hw {int ports; scalar_t__ chip_id; scalar_t__ phy_type; int hw_lock; int intr_mask; int phy_lock; struct net_device** dev; } ;
struct net_device {int dummy; } ;


 int B0_IMSK ;
 scalar_t__ CHIP_ID_GENESIS ;
 int IS_EXT_REG ;
 scalar_t__ SK_PHY_BCOM ;
 int bcom_phy_intr (struct skge_port*) ;
 struct skge_port* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int skge_read32 (struct skge_hw*,int ) ;
 int skge_write32 (struct skge_hw*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 int yukon_phy_intr (struct skge_port*) ;

__attribute__((used)) static void skge_extirq(unsigned long arg)
{
 struct skge_hw *hw = (struct skge_hw *) arg;
 int port;

 for (port = 0; port < hw->ports; port++) {
  struct net_device *dev = hw->dev[port];

  if (netif_running(dev)) {
   struct skge_port *skge = netdev_priv(dev);

   spin_lock(&hw->phy_lock);
   if (hw->chip_id != CHIP_ID_GENESIS)
    yukon_phy_intr(skge);
   else if (hw->phy_type == SK_PHY_BCOM)
    bcom_phy_intr(skge);
   spin_unlock(&hw->phy_lock);
  }
 }

 spin_lock_irq(&hw->hw_lock);
 hw->intr_mask |= IS_EXT_REG;
 skge_write32(hw, B0_IMSK, hw->intr_mask);
 skge_read32(hw, B0_IMSK);
 spin_unlock_irq(&hw->hw_lock);
}
