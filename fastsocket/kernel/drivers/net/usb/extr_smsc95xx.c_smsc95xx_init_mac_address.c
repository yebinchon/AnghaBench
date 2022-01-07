
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {TYPE_1__* net; } ;
struct TYPE_2__ {int dev_addr; } ;


 int EEPROM_MAC_OFFSET ;
 int ETH_ALEN ;
 int devdbg (struct usbnet*,char*) ;
 scalar_t__ is_valid_ether_addr (int ) ;
 scalar_t__ netif_msg_ifup (struct usbnet*) ;
 int random_ether_addr (int ) ;
 scalar_t__ smsc95xx_read_eeprom (struct usbnet*,int ,int ,int ) ;

__attribute__((used)) static void smsc95xx_init_mac_address(struct usbnet *dev)
{

 if (smsc95xx_read_eeprom(dev, EEPROM_MAC_OFFSET, ETH_ALEN,
   dev->net->dev_addr) == 0) {
  if (is_valid_ether_addr(dev->net->dev_addr)) {

   if (netif_msg_ifup(dev))
    devdbg(dev, "MAC address read from EEPROM");
   return;
  }
 }


 random_ether_addr(dev->net->dev_addr);
 if (netif_msg_ifup(dev))
  devdbg(dev, "MAC address set to random_ether_addr");
}
