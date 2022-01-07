
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct skge_port {int port; struct skge_hw* hw; } ;
struct skge_hw {int phy_lock; int chip_id; int phy_addr; } ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int reg_num; int val_in; int val_out; int phy_id; } ;
struct ifreq {int dummy; } ;


 int CHIP_ID_GENESIS ;
 int ENODEV ;
 int EOPNOTSUPP ;



 int __gm_phy_read (struct skge_hw*,int ,int,int *) ;
 int __xm_phy_read (struct skge_hw*,int ,int,int *) ;
 int gm_phy_write (struct skge_hw*,int ,int,int ) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 struct skge_port* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int xm_phy_write (struct skge_hw*,int ,int,int ) ;

__attribute__((used)) static int skge_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct mii_ioctl_data *data = if_mii(ifr);
 struct skge_port *skge = netdev_priv(dev);
 struct skge_hw *hw = skge->hw;
 int err = -EOPNOTSUPP;

 if (!netif_running(dev))
  return -ENODEV;

 switch(cmd) {
 case 130:
  data->phy_id = hw->phy_addr;


 case 129: {
  u16 val = 0;
  spin_lock_bh(&hw->phy_lock);
  if (hw->chip_id == CHIP_ID_GENESIS)
   err = __xm_phy_read(hw, skge->port, data->reg_num & 0x1f, &val);
  else
   err = __gm_phy_read(hw, skge->port, data->reg_num & 0x1f, &val);
  spin_unlock_bh(&hw->phy_lock);
  data->val_out = val;
  break;
 }

 case 128:
  spin_lock_bh(&hw->phy_lock);
  if (hw->chip_id == CHIP_ID_GENESIS)
   err = xm_phy_write(hw, skge->port, data->reg_num & 0x1f,
       data->val_in);
  else
   err = gm_phy_write(hw, skge->port, data->reg_num & 0x1f,
       data->val_in);
  spin_unlock_bh(&hw->phy_lock);
  break;
 }
 return err;
}
