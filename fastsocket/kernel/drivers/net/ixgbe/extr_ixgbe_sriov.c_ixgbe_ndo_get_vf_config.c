
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ixgbe_adapter {int num_vfs; TYPE_1__* vfinfo; } ;
struct ifla_vf_info {int vf; int qos; int vlan; int tx_rate; int mac; } ;
struct TYPE_2__ {int pf_qos; int pf_vlan; int tx_rate; int vf_mac_addresses; } ;


 int EINVAL ;
 int ETH_ALEN ;
 int memcpy (int *,int ,int ) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

int ixgbe_ndo_get_vf_config(struct net_device *netdev,
       int vf, struct ifla_vf_info *ivi)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 if (vf >= adapter->num_vfs)
  return -EINVAL;
 ivi->vf = vf;
 memcpy(&ivi->mac, adapter->vfinfo[vf].vf_mac_addresses, ETH_ALEN);
 ivi->tx_rate = adapter->vfinfo[vf].tx_rate;
 ivi->vlan = adapter->vfinfo[vf].pf_vlan;
 ivi->qos = adapter->vfinfo[vf].pf_qos;
 return 0;
}
