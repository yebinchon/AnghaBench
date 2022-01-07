
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int rtl8150_t ;


 int CSCR ;
 short CSCR_LINK_STATUS ;
 int get_registers (int *,int ,int,short*) ;
 int * netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;

__attribute__((used)) static void set_carrier(struct net_device *netdev)
{
 rtl8150_t *dev = netdev_priv(netdev);
 short tmp;

 get_registers(dev, CSCR, 2, &tmp);
 if (tmp & CSCR_LINK_STATUS)
  netif_carrier_on(netdev);
 else
  netif_carrier_off(netdev);
}
