
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ipw_priv {int mutex; int * eeprom; } ;
struct ethtool_eeprom {size_t offset; int len; } ;


 int EINVAL ;
 scalar_t__ IPW_EEPROM_DATA ;
 int IPW_EEPROM_IMAGE_SIZE ;
 int ipw_write8 (struct ipw_priv*,scalar_t__,int ) ;
 struct ipw_priv* libipw_priv (struct net_device*) ;
 int memcpy (int *,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipw_ethtool_set_eeprom(struct net_device *dev,
      struct ethtool_eeprom *eeprom, u8 * bytes)
{
 struct ipw_priv *p = libipw_priv(dev);
 int i;

 if (eeprom->offset + eeprom->len > IPW_EEPROM_IMAGE_SIZE)
  return -EINVAL;
 mutex_lock(&p->mutex);
 memcpy(&p->eeprom[eeprom->offset], bytes, eeprom->len);
 for (i = 0; i < IPW_EEPROM_IMAGE_SIZE; i++)
  ipw_write8(p, i + IPW_EEPROM_DATA, p->eeprom[i]);
 mutex_unlock(&p->mutex);
 return 0;
}
