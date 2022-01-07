
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct ixgbe_adapter {int num_vfs; TYPE_2__* pdev; int state; TYPE_1__* vfinfo; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int pf_set_mac; } ;


 int EINVAL ;
 int __IXGBE_DOWN ;
 int dev_info (int *,char*,...) ;
 int dev_warn (int *,char*) ;
 int is_valid_ether_addr (int *) ;
 int ixgbe_set_vf_mac (struct ixgbe_adapter*,int,int *) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;

int ixgbe_ndo_set_vf_mac(struct net_device *netdev, int vf, u8 *mac)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 if (!is_valid_ether_addr(mac) || (vf >= adapter->num_vfs))
  return -EINVAL;
 adapter->vfinfo[vf].pf_set_mac = 1;
 dev_info(&adapter->pdev->dev, "setting MAC %pM on VF %d\n", mac, vf);
 dev_info(&adapter->pdev->dev, "Reload the VF driver to make this"
          " change effective.");
 if (test_bit(__IXGBE_DOWN, &adapter->state)) {
  dev_warn(&adapter->pdev->dev, "The VF MAC address has been set,"
    " but the PF device is not up.\n");
  dev_warn(&adapter->pdev->dev, "Bring the PF device up before"
    " attempting to use the VF device.\n");
 }
 return ixgbe_set_vf_mac(adapter, vf, mac);
}
