
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_private {int eeprom_size; } ;
struct net_device {int dummy; } ;


 struct netdev_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int get_eeprom_len(struct net_device *dev)
{
 struct netdev_private *np = netdev_priv(dev);
 return np->eeprom_size;
}
