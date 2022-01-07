
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;


 int DR ;
 int atmel_write16 (struct net_device*,int ,int) ;
 int atmel_write8 (struct net_device*,int ,unsigned char const) ;
 int atmel_writeAR (struct net_device*,int) ;

__attribute__((used)) static void atmel_copy_to_card(struct net_device *dev, u16 dest,
          const unsigned char *src, u16 len)
{
 int i;
 atmel_writeAR(dev, dest);
 if (dest % 2) {
  atmel_write8(dev, DR, *src);
  src++; len--;
 }
 for (i = len; i > 1 ; i -= 2) {
  u8 lb = *src++;
  u8 hb = *src++;
  atmel_write16(dev, DR, lb | (hb << 8));
 }
 if (i)
  atmel_write8(dev, DR, *src);
}
