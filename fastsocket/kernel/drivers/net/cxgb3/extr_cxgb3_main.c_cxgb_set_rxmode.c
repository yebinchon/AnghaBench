
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {int mac; } ;
struct net_device {int dummy; } ;


 struct port_info* netdev_priv (struct net_device*) ;
 int t3_mac_set_rx_mode (int *,struct net_device*) ;

__attribute__((used)) static void cxgb_set_rxmode(struct net_device *dev)
{
 struct port_info *pi = netdev_priv(dev);

 t3_mac_set_rx_mode(&pi->mac, dev);
}
