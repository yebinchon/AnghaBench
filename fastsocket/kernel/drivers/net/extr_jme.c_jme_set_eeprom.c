
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct jme_adapter {int dummy; } ;
struct ethtool_eeprom {int offset; int len; scalar_t__ magic; } ;


 int EINVAL ;
 scalar_t__ JME_EEPROM_MAGIC ;
 int jme_smb_write (struct jme_adapter*,int,int ) ;
 struct jme_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
jme_set_eeprom(struct net_device *netdev,
  struct ethtool_eeprom *eeprom, u8 *data)
{
 struct jme_adapter *jme = netdev_priv(netdev);
 int i, offset = eeprom->offset, len = eeprom->len;

 if (eeprom->magic != JME_EEPROM_MAGIC)
  return -EINVAL;




 for (i = 0 ; i < len ; ++i)
  jme_smb_write(jme, i + offset, data[i]);

 return 0;
}
