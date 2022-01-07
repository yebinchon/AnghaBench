
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct igb_adapter {int vfs_allocated_count; TYPE_1__* vf_data; } ;
struct ifla_vf_info {int vf; int qos; int vlan; int tx_rate; int mac; } ;
struct TYPE_2__ {int pf_qos; int pf_vlan; int tx_rate; int vf_mac_addresses; } ;


 int EINVAL ;
 int ETH_ALEN ;
 int memcpy (int *,int ,int ) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int igb_ndo_get_vf_config(struct net_device *netdev,
     int vf, struct ifla_vf_info *ivi)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 if (vf >= adapter->vfs_allocated_count)
  return -EINVAL;
 ivi->vf = vf;
 memcpy(&ivi->mac, adapter->vf_data[vf].vf_mac_addresses, ETH_ALEN);
 ivi->tx_rate = adapter->vf_data[vf].tx_rate;
 ivi->vlan = adapter->vf_data[vf].pf_vlan;
 ivi->qos = adapter->vf_data[vf].pf_qos;
 return 0;
}
