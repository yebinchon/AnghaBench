
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct rtl8169_private {int dummy; } ;
struct net_device {int dev_addr; int addr_len; } ;


 int EADDRNOTAVAIL ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;
 int rtl_rar_set (struct rtl8169_private*,int ) ;

__attribute__((used)) static int rtl_set_mac_address(struct net_device *dev, void *p)
{
 struct rtl8169_private *tp = netdev_priv(dev);
 struct sockaddr *addr = p;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(dev->dev_addr, addr->sa_data, dev->addr_len);

 rtl_rar_set(tp, dev->dev_addr);

 return 0;
}
