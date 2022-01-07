
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nic {scalar_t__ eeprom; } ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {size_t offset; int len; int magic; } ;


 int E100_EEPROM_MAGIC ;
 int memcpy (int *,int *,int ) ;
 struct nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int e100_get_eeprom(struct net_device *netdev,
 struct ethtool_eeprom *eeprom, u8 *bytes)
{
 struct nic *nic = netdev_priv(netdev);

 eeprom->magic = E100_EEPROM_MAGIC;
 memcpy(bytes, &((u8 *)nic->eeprom)[eeprom->offset], eeprom->len);

 return 0;
}
