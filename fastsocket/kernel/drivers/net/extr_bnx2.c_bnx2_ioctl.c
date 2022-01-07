
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int reg_num; int val_in; int val_out; int phy_id; } ;
struct ifreq {int dummy; } ;
struct bnx2 {int phy_flags; int phy_lock; int phy_addr; } ;


 int BNX2_PHY_FLAG_REMOTE_PHY_CAP ;
 int EAGAIN ;
 int EOPNOTSUPP ;



 int bnx2_read_phy (struct bnx2*,int,int *) ;
 int bnx2_write_phy (struct bnx2*,int,int ) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 struct bnx2* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
bnx2_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct mii_ioctl_data *data = if_mii(ifr);
 struct bnx2 *bp = netdev_priv(dev);
 int err;

 switch(cmd) {
 case 130:
  data->phy_id = bp->phy_addr;


 case 129: {
  u32 mii_regval;

  if (bp->phy_flags & BNX2_PHY_FLAG_REMOTE_PHY_CAP)
   return -EOPNOTSUPP;

  if (!netif_running(dev))
   return -EAGAIN;

  spin_lock_bh(&bp->phy_lock);
  err = bnx2_read_phy(bp, data->reg_num & 0x1f, &mii_regval);
  spin_unlock_bh(&bp->phy_lock);

  data->val_out = mii_regval;

  return err;
 }

 case 128:
  if (bp->phy_flags & BNX2_PHY_FLAG_REMOTE_PHY_CAP)
   return -EOPNOTSUPP;

  if (!netif_running(dev))
   return -EAGAIN;

  spin_lock_bh(&bp->phy_lock);
  err = bnx2_write_phy(bp, data->reg_num & 0x1f, data->val_in);
  spin_unlock_bh(&bp->phy_lock);

  return err;

 default:

  break;
 }
 return -EOPNOTSUPP;
}
