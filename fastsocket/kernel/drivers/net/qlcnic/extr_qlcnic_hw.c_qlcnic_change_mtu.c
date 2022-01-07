
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_1__* netdev; } ;
struct net_device {int mtu; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int P3P_MAX_MTU ;
 int P3P_MIN_MTU ;
 int dev_err (int *,char*,int,int) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int qlcnic_fw_cmd_set_mtu (struct qlcnic_adapter*,int) ;

int qlcnic_change_mtu(struct net_device *netdev, int mtu)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 int rc = 0;

 if (mtu < P3P_MIN_MTU || mtu > P3P_MAX_MTU) {
  dev_err(&adapter->netdev->dev, "%d bytes < mtu < %d bytes"
   " not supported\n", P3P_MAX_MTU, P3P_MIN_MTU);
  return -EINVAL;
 }

 rc = qlcnic_fw_cmd_set_mtu(adapter, mtu);

 if (!rc)
  netdev->mtu = mtu;

 return rc;
}
