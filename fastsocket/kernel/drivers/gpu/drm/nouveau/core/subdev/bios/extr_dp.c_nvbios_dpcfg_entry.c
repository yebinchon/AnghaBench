
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nouveau_bios {int dummy; } ;


 int nv_ro08 (struct nouveau_bios*,int) ;
 int nvbios_dp_table (struct nouveau_bios*,int*,int*,int*,int*) ;

__attribute__((used)) static u16
nvbios_dpcfg_entry(struct nouveau_bios *bios, u16 outp, u8 idx,
     u8 *ver, u8 *hdr, u8 *cnt, u8 *len)
{
 if (*ver >= 0x40) {
  outp = nvbios_dp_table(bios, ver, hdr, cnt, len);
  *hdr = *hdr + (*len * * cnt);
  *len = nv_ro08(bios, outp + 0x06);
  *cnt = nv_ro08(bios, outp + 0x07);
 }

 if (idx < *cnt)
  return outp + *hdr + (idx * *len);

 return 0x0000;
}
