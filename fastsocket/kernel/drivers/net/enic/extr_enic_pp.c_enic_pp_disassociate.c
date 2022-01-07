
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; } ;
struct enic_port_profile {int mac_addr; } ;
struct enic {struct net_device* netdev; } ;


 int ENIC_DEVCMD_PROXY_BY_INDEX (int,int,struct enic*,int ,int ) ;
 int ENIC_PP_BY_INDEX (struct enic*,int,struct enic_port_profile*,int*) ;
 int PORT_SELF_VF ;
 int enic_unset_port_profile (struct enic*,int) ;
 int is_zero_ether_addr (int ) ;
 int vnic_dev_del_addr ;

__attribute__((used)) static int enic_pp_disassociate(struct enic *enic, int vf,
 struct enic_port_profile *prev_pp, int *restore_pp)
{
 struct net_device *netdev = enic->netdev;
 struct enic_port_profile *pp;
 int err;

 ENIC_PP_BY_INDEX(enic, vf, pp, &err);
 if (err)
  return err;


 if (!is_zero_ether_addr(pp->mac_addr))
  ENIC_DEVCMD_PROXY_BY_INDEX(vf, err, enic, vnic_dev_del_addr,
   pp->mac_addr);
 else if (vf == PORT_SELF_VF && !is_zero_ether_addr(netdev->dev_addr))
  ENIC_DEVCMD_PROXY_BY_INDEX(vf, err, enic, vnic_dev_del_addr,
   netdev->dev_addr);

 return enic_unset_port_profile(enic, vf);
}
