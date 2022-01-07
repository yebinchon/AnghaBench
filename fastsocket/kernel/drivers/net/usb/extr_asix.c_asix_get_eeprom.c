
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int len; scalar_t__ offset; int magic; } ;
typedef int __le16 ;


 int AX_CMD_READ_EEPROM ;
 int AX_EEPROM_MAGIC ;
 int EINVAL ;
 scalar_t__ asix_read_cmd (struct usbnet*,int ,scalar_t__,int ,int,int *) ;
 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static int asix_get_eeprom(struct net_device *net,
         struct ethtool_eeprom *eeprom, u8 *data)
{
 struct usbnet *dev = netdev_priv(net);
 __le16 *ebuf = (__le16 *)data;
 int i;




 if (eeprom->len % 2)
  return -EINVAL;

 eeprom->magic = AX_EEPROM_MAGIC;


 for (i=0; i < eeprom->len / 2; i++) {
  if (asix_read_cmd(dev, AX_CMD_READ_EEPROM,
   eeprom->offset + i, 0, 2, &ebuf[i]) < 0)
   return -EINVAL;
 }
 return 0;
}
