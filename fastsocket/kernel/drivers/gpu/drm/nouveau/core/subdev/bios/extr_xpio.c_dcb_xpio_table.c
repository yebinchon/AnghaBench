
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nouveau_bios {int dummy; } ;


 int dcb_xpiod_table (struct nouveau_bios*,int*,int*,int*,int*) ;
 int nv_ro08 (struct nouveau_bios*,int) ;
 int nv_ro16 (struct nouveau_bios*,int) ;

u16
dcb_xpio_table(struct nouveau_bios *bios, u8 idx,
        u8 *ver, u8 *hdr, u8 *cnt, u8 *len)
{
 u16 data = dcb_xpiod_table(bios, ver, hdr, cnt, len);
 if (data && idx < *cnt) {
  u16 xpio = nv_ro16(bios, data + *hdr + (idx * *len));
  if (xpio) {
   *ver = nv_ro08(bios, data + 0x00);
   *hdr = nv_ro08(bios, data + 0x01);
   *cnt = nv_ro08(bios, data + 0x02);
   *len = nv_ro08(bios, data + 0x03);
   return xpio;
  }
 }
 return 0x0000;
}
