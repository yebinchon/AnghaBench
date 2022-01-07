
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int dummy; } ;


 int dm_read_shared_word (struct usbnet*,int ,int ,void*) ;

__attribute__((used)) static int dm_read_eeprom_word(struct usbnet *dev, u8 offset, void *value)
{
 return dm_read_shared_word(dev, 0, offset, value);
}
