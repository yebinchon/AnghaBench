
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int (* set_vlan_anti_spoofing ) (struct ixgbe_hw*,int,int) ;} ;
struct TYPE_7__ {TYPE_2__ ops; } ;
struct ixgbe_hw {TYPE_3__ mac; } ;
struct ixgbe_adapter {int num_vfs; TYPE_4__* vfinfo; TYPE_1__* pdev; int state; scalar_t__ antispoofing_enabled; struct ixgbe_hw hw; } ;
struct TYPE_8__ {int pf_vlan; int pf_qos; } ;
struct TYPE_5__ {int dev; } ;


 int EINVAL ;
 int __IXGBE_DOWN ;
 int dev_info (int *,char*,int,int,int) ;
 int dev_warn (int *,char*) ;
 int ixgbe_clear_vmvir (struct ixgbe_adapter*,int) ;
 int ixgbe_set_vf_vlan (struct ixgbe_adapter*,int,int,int) ;
 int ixgbe_set_vmolr (struct ixgbe_hw*,int,int) ;
 int ixgbe_set_vmvir (struct ixgbe_adapter*,int,int,int) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int stub1 (struct ixgbe_hw*,int,int) ;
 int stub2 (struct ixgbe_hw*,int,int) ;
 scalar_t__ test_bit (int ,int *) ;

int ixgbe_ndo_set_vf_vlan(struct net_device *netdev, int vf, u16 vlan, u8 qos)
{
 int err = 0;
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_hw *hw = &adapter->hw;

 if ((vf >= adapter->num_vfs) || (vlan > 4095) || (qos > 7))
  return -EINVAL;
 if (vlan || qos) {
  if (adapter->vfinfo[vf].pf_vlan)
   err = ixgbe_set_vf_vlan(adapter, 0,
      adapter->vfinfo[vf].pf_vlan,
      vf);
  if (err)
   goto out;
  err = ixgbe_set_vf_vlan(adapter, 1, vlan, vf);
  if (err)
   goto out;
  ixgbe_set_vmvir(adapter, vlan, qos, vf);
  ixgbe_set_vmolr(hw, vf, 0);
  if (adapter->antispoofing_enabled)
   hw->mac.ops.set_vlan_anti_spoofing(hw, 1, vf);
  adapter->vfinfo[vf].pf_vlan = vlan;
  adapter->vfinfo[vf].pf_qos = qos;
  dev_info(&adapter->pdev->dev,
    "Setting VLAN %d, QOS 0x%x on VF %d\n", vlan, qos, vf);
  if (test_bit(__IXGBE_DOWN, &adapter->state)) {
   dev_warn(&adapter->pdev->dev,
     "The VF VLAN has been set,"
     " but the PF device is not up.\n");
   dev_warn(&adapter->pdev->dev,
     "Bring the PF device up before"
     " attempting to use the VF device.\n");
  }
 } else {
  err = ixgbe_set_vf_vlan(adapter, 0,
     adapter->vfinfo[vf].pf_vlan, vf);
  ixgbe_clear_vmvir(adapter, vf);
  ixgbe_set_vmolr(hw, vf, 1);
  hw->mac.ops.set_vlan_anti_spoofing(hw, 0, vf);
  adapter->vfinfo[vf].pf_vlan = 0;
  adapter->vfinfo[vf].pf_qos = 0;
       }
out:
       return err;
}
