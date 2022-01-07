
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct ifla_vf_info {int vf; int vlan; int qos; scalar_t__ tx_rate; int mac; } ;
struct TYPE_2__ {int tci; int mac_addr; } ;
struct efx_vf {TYPE_1__ addr; } ;
struct efx_nic {int vf_init_count; struct efx_vf* vf; } ;


 int EINVAL ;
 int ETH_ALEN ;
 int VLAN_PRIO_SHIFT ;
 int VLAN_VID_MASK ;
 int memcpy (int ,int ,int ) ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int ntohs (int ) ;

int efx_sriov_get_vf_config(struct net_device *net_dev, int vf_i,
       struct ifla_vf_info *ivi)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 struct efx_vf *vf;
 u16 tci;

 if (vf_i >= efx->vf_init_count)
  return -EINVAL;
 vf = efx->vf + vf_i;

 ivi->vf = vf_i;
 memcpy(ivi->mac, vf->addr.mac_addr, ETH_ALEN);
 ivi->tx_rate = 0;
 tci = ntohs(vf->addr.tci);
 ivi->vlan = tci & VLAN_VID_MASK;
 ivi->qos = (tci >> VLAN_PRIO_SHIFT) & 0x7;

 return 0;
}
