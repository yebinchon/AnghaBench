
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct nvbios_ocfg {void** clkcmp; void* match; } ;
struct nouveau_bios {int dummy; } ;


 void* nv_ro16 (struct nouveau_bios*,scalar_t__) ;
 scalar_t__ nvbios_ocfg_entry (struct nouveau_bios*,scalar_t__,int ,int *,int *,int *,int *) ;

u16
nvbios_ocfg_parse(struct nouveau_bios *bios, u16 outp, u8 idx,
    u8 *ver, u8 *hdr, u8 *cnt, u8 *len,
    struct nvbios_ocfg *info)
{
 u16 data = nvbios_ocfg_entry(bios, outp, idx, ver, hdr, cnt, len);
 if (data) {
  info->match = nv_ro16(bios, data + 0x00);
  info->clkcmp[0] = nv_ro16(bios, data + 0x02);
  info->clkcmp[1] = nv_ro16(bios, data + 0x04);
 }
 return data;
}
