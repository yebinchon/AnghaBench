
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int len; int offset; int magic; } ;


 int LAN95XX_EEPROM_MAGIC ;
 struct usbnet* netdev_priv (struct net_device*) ;
 int smsc95xx_read_eeprom (struct usbnet*,int ,int ,int *) ;

__attribute__((used)) static int smsc95xx_ethtool_get_eeprom(struct net_device *netdev,
           struct ethtool_eeprom *ee, u8 *data)
{
 struct usbnet *dev = netdev_priv(netdev);

 ee->magic = LAN95XX_EEPROM_MAGIC;

 return smsc95xx_read_eeprom(dev, ee->offset, ee->len, data);
}
