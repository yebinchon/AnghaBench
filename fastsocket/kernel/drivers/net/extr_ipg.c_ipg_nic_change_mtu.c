
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct ipg_nic_private {int max_rxframe_size; int rxfrag_size; int rxsupport_size; int is_jumbo; } ;


 int EINVAL ;
 int IPG_DEBUG_MSG (char*) ;
 int ipg_nic_open (struct net_device*) ;
 int ipg_nic_stop (struct net_device*) ;
 struct ipg_nic_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ipg_nic_change_mtu(struct net_device *dev, int new_mtu)
{
 struct ipg_nic_private *sp = netdev_priv(dev);
 int err;






 IPG_DEBUG_MSG("_nic_change_mtu\n");





 if (new_mtu < 68 || new_mtu > 10240)
  return -EINVAL;

 err = ipg_nic_stop(dev);
 if (err)
  return err;

 dev->mtu = new_mtu;

 sp->max_rxframe_size = new_mtu;

 sp->rxfrag_size = new_mtu;
 if (sp->rxfrag_size > 4088)
  sp->rxfrag_size = 4088;

 sp->rxsupport_size = sp->max_rxframe_size;

 if (new_mtu > 0x0600)
  sp->is_jumbo = 1;
 else
  sp->is_jumbo = 0;

 return ipg_nic_open(dev);
}
