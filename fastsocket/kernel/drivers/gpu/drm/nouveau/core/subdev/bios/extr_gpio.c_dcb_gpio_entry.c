
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nouveau_bios {int dummy; } ;


 int dcb_gpio_table (struct nouveau_bios*,int*,int*,int*,int*) ;
 int dcb_xpio_table (struct nouveau_bios*,int,int*,int*,int*,int*) ;

u16
dcb_gpio_entry(struct nouveau_bios *bios, int idx, int ent, u8 *ver, u8 *len)
{
 u8 hdr, cnt, xver;
 u16 gpio;

 if (!idx--)
  gpio = dcb_gpio_table(bios, ver, &hdr, &cnt, len);
 else
  gpio = dcb_xpio_table(bios, idx, &xver, &hdr, &cnt, len);

 if (gpio && ent < cnt)
  return gpio + hdr + (ent * *len);
 return 0x0000;
}
