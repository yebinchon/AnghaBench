
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct nouveau_bios {int dummy; } ;


 int nv_ro16 (struct nouveau_bios*,int) ;

u16
nvbios_oclk_match(struct nouveau_bios *bios, u16 cmp, u32 khz)
{
 while (cmp) {
  if (khz / 10 >= nv_ro16(bios, cmp + 0x00))
   return nv_ro16(bios, cmp + 0x02);
  cmp += 0x04;
 }
 return 0x0000;
}
