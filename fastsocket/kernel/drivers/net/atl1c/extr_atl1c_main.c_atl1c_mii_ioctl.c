
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int reg_num; int val_in; int val_out; int phy_id; } ;
struct ifreq {int dummy; } ;
struct atl1c_adapter {int mdio_lock; int hw; struct pci_dev* pdev; } ;


 int EFAULT ;
 int EINVAL ;
 int EIO ;
 int EOPNOTSUPP ;



 int atl1c_read_phy_reg (int *,int,int *) ;
 int atl1c_write_phy_reg (int *,int,int ) ;
 int dev_dbg (int *,char*,int,int ) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 struct atl1c_adapter* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int atl1c_mii_ioctl(struct net_device *netdev,
      struct ifreq *ifr, int cmd)
{
 struct atl1c_adapter *adapter = netdev_priv(netdev);
 struct pci_dev *pdev = adapter->pdev;
 struct mii_ioctl_data *data = if_mii(ifr);
 unsigned long flags;
 int retval = 0;

 if (!netif_running(netdev))
  return -EINVAL;

 spin_lock_irqsave(&adapter->mdio_lock, flags);
 switch (cmd) {
 case 130:
  data->phy_id = 0;
  break;

 case 129:
  if (atl1c_read_phy_reg(&adapter->hw, data->reg_num & 0x1F,
        &data->val_out)) {
   retval = -EIO;
   goto out;
  }
  break;

 case 128:
  if (data->reg_num & ~(0x1F)) {
   retval = -EFAULT;
   goto out;
  }

  dev_dbg(&pdev->dev, "<atl1c_mii_ioctl> write %x %x",
    data->reg_num, data->val_in);
  if (atl1c_write_phy_reg(&adapter->hw,
         data->reg_num, data->val_in)) {
   retval = -EIO;
   goto out;
  }
  break;

 default:
  retval = -EOPNOTSUPP;
  break;
 }
out:
 spin_unlock_irqrestore(&adapter->mdio_lock, flags);
 return retval;
}
