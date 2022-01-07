
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int mdio; } ;
struct TYPE_4__ {TYPE_1__ phy; } ;
struct ixgbe_adapter {TYPE_2__ hw; } ;
struct ifreq {int dummy; } ;



 int if_mii (struct ifreq*) ;
 int ixgbe_ptp_hwtstamp_ioctl (struct ixgbe_adapter*,struct ifreq*,int) ;
 int mdio_mii_ioctl (int *,int ,int) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ixgbe_ioctl(struct net_device *netdev, struct ifreq *req, int cmd)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);

 switch (cmd) {




 default:
  return mdio_mii_ioctl(&adapter->hw.phy.mdio, if_mii(req), cmd);
 }
}
