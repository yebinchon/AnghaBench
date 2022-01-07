
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nvbios_xpio {void* flags; void* addr; void* type; } ;
struct nouveau_bios {int dummy; } ;


 int dcb_xpio_table (struct nouveau_bios*,int,int*,int*,int*,int*) ;
 void* nv_ro08 (struct nouveau_bios*,int) ;

u16
dcb_xpio_parse(struct nouveau_bios *bios, u8 idx,
        u8 *ver, u8 *hdr, u8 *cnt, u8 *len,
        struct nvbios_xpio *info)
{
 u16 data = dcb_xpio_table(bios, idx, ver, hdr, cnt, len);
 if (data && *len >= 6) {
  info->type = nv_ro08(bios, data + 0x04);
  info->addr = nv_ro08(bios, data + 0x05);
  info->flags = nv_ro08(bios, data + 0x06);
 }
 return 0x0000;
}
