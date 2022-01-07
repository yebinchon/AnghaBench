
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int data; } ;
struct net_device {int dummy; } ;
struct asix_data {int eeprom_len; } ;


 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static int asix_get_eeprom_len(struct net_device *net)
{
 struct usbnet *dev = netdev_priv(net);
 struct asix_data *data = (struct asix_data *)&dev->data;

 return data->eeprom_len;
}
