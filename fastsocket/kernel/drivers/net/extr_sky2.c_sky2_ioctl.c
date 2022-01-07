
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sky2_port {int phy_lock; int port; struct sky2_hw* hw; } ;
struct sky2_hw {int dummy; } ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int reg_num; int val_in; int val_out; int phy_id; } ;
struct ifreq {int dummy; } ;


 int ENODEV ;
 int EOPNOTSUPP ;
 int PHY_ADDR_MARV ;



 int __gm_phy_read (struct sky2_hw*,int ,int,int *) ;
 int gm_phy_write (struct sky2_hw*,int ,int,int ) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 struct sky2_port* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int sky2_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct mii_ioctl_data *data = if_mii(ifr);
 struct sky2_port *sky2 = netdev_priv(dev);
 struct sky2_hw *hw = sky2->hw;
 int err = -EOPNOTSUPP;

 if (!netif_running(dev))
  return -ENODEV;

 switch (cmd) {
 case 130:
  data->phy_id = PHY_ADDR_MARV;


 case 129: {
  u16 val = 0;

  spin_lock_bh(&sky2->phy_lock);
  err = __gm_phy_read(hw, sky2->port, data->reg_num & 0x1f, &val);
  spin_unlock_bh(&sky2->phy_lock);

  data->val_out = val;
  break;
 }

 case 128:
  spin_lock_bh(&sky2->phy_lock);
  err = gm_phy_write(hw, sky2->port, data->reg_num & 0x1f,
       data->val_in);
  spin_unlock_bh(&sky2->phy_lock);
  break;
 }
 return err;
}
