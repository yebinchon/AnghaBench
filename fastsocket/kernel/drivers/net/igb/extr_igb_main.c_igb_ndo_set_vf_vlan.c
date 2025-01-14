
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct igb_adapter {int vfs_allocated_count; TYPE_2__* vf_data; TYPE_1__* pdev; int state; } ;
struct TYPE_4__ {int pf_vlan; int pf_qos; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int VLAN_PRIO_SHIFT ;
 int __IGB_DOWN ;
 int dev_info (int *,char*,int,int,int) ;
 int dev_warn (int *,char*) ;
 int igb_set_vmolr (struct igb_adapter*,int,int) ;
 int igb_set_vmvir (struct igb_adapter*,int,int) ;
 int igb_vlvf_set (struct igb_adapter*,int,int,int) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int igb_ndo_set_vf_vlan(struct net_device *netdev,
          int vf, u16 vlan, u8 qos)
{
 int err = 0;
 struct igb_adapter *adapter = netdev_priv(netdev);

 if ((vf >= adapter->vfs_allocated_count) || (vlan > 4095) || (qos > 7))
  return -EINVAL;
 if (vlan || qos) {
  err = igb_vlvf_set(adapter, vlan, !!vlan, vf);
  if (err)
   goto out;
  igb_set_vmvir(adapter, vlan | (qos << VLAN_PRIO_SHIFT), vf);
  igb_set_vmolr(adapter, vf, !vlan);
  adapter->vf_data[vf].pf_vlan = vlan;
  adapter->vf_data[vf].pf_qos = qos;
  dev_info(&adapter->pdev->dev,
    "Setting VLAN %d, QOS 0x%x on VF %d\n", vlan, qos, vf);
  if (test_bit(__IGB_DOWN, &adapter->state)) {
   dev_warn(&adapter->pdev->dev,
     "The VF VLAN has been set, but the PF device is not up.\n");
   dev_warn(&adapter->pdev->dev,
     "Bring the PF device up before attempting to use the VF device.\n");
  }
 } else {
  igb_vlvf_set(adapter, adapter->vf_data[vf].pf_vlan,
        0, vf);
  igb_set_vmvir(adapter, vlan, vf);
  igb_set_vmolr(adapter, vf, 1);
  adapter->vf_data[vf].pf_vlan = 0;
  adapter->vf_data[vf].pf_qos = 0;
 }
out:
 return err;
}
