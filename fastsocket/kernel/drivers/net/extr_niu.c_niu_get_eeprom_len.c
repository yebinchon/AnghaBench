
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int eeprom_len; } ;
struct net_device {int dummy; } ;


 struct niu* netdev_priv (struct net_device*) ;

__attribute__((used)) static int niu_get_eeprom_len(struct net_device *dev)
{
 struct niu *np = netdev_priv(dev);

 return np->eeprom_len;
}
