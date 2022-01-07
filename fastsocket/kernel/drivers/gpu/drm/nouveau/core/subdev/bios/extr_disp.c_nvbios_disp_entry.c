
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nouveau_bios {int dummy; } ;


 int nvbios_disp_table (struct nouveau_bios*,int*,int*,int*,int*,int*) ;

u16
nvbios_disp_entry(struct nouveau_bios *bios, u8 idx,
    u8 *ver, u8 *len, u8 *sub)
{
 u8 hdr, cnt;
 u16 data = nvbios_disp_table(bios, ver, &hdr, &cnt, len, sub);
 if (data && idx < cnt)
  return data + hdr + (idx * *len);
 *ver = 0x00;
 return 0x0000;
}
