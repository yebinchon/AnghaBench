
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifla_vf_info {int vf; int mac; scalar_t__ qos; int vlan; int tx_rate; } ;
struct be_vf_cfg {int mac_addr; int vlan_tag; int tx_rate; } ;
struct be_adapter {int num_vfs; struct be_vf_cfg* vf_cfg; } ;


 int EINVAL ;
 int EPERM ;
 int ETH_ALEN ;
 int memcpy (int *,int ,int ) ;
 struct be_adapter* netdev_priv (struct net_device*) ;
 int sriov_enabled (struct be_adapter*) ;

__attribute__((used)) static int be_get_vf_config(struct net_device *netdev, int vf,
   struct ifla_vf_info *vi)
{
 struct be_adapter *adapter = netdev_priv(netdev);
 struct be_vf_cfg *vf_cfg = &adapter->vf_cfg[vf];

 if (!sriov_enabled(adapter))
  return -EPERM;

 if (vf >= adapter->num_vfs)
  return -EINVAL;

 vi->vf = vf;
 vi->tx_rate = vf_cfg->tx_rate;
 vi->vlan = vf_cfg->vlan_tag;
 vi->qos = 0;
 memcpy(&vi->mac, vf_cfg->mac_addr, ETH_ALEN);

 return 0;
}
