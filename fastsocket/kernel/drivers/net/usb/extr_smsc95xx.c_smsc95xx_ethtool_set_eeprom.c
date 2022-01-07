
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int len; int offset; int magic; } ;


 int EINVAL ;
 int LAN95XX_EEPROM_MAGIC ;
 int devwarn (struct usbnet*,char*,int ) ;
 struct usbnet* netdev_priv (struct net_device*) ;
 int smsc95xx_write_eeprom (struct usbnet*,int ,int ,int *) ;

__attribute__((used)) static int smsc95xx_ethtool_set_eeprom(struct net_device *netdev,
           struct ethtool_eeprom *ee, u8 *data)
{
 struct usbnet *dev = netdev_priv(netdev);

 if (ee->magic != LAN95XX_EEPROM_MAGIC) {
  devwarn(dev, "EEPROM: magic value mismatch, magic = 0x%x",
   ee->magic);
  return -EINVAL;
 }

 return smsc95xx_write_eeprom(dev, ee->offset, ee->len, data);
}
