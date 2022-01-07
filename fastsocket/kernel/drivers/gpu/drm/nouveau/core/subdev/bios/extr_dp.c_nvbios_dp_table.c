
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nouveau_bios {int dummy; } ;
struct bit_entry {int version; int length; int offset; } ;


 int bit_entry (struct nouveau_bios*,char,struct bit_entry*) ;
 int nv_ro08 (struct nouveau_bios*,int) ;
 int nv_ro16 (struct nouveau_bios*,int ) ;

__attribute__((used)) static u16
nvbios_dp_table(struct nouveau_bios *bios, u8 *ver, u8 *hdr, u8 *cnt, u8 *len)
{
 struct bit_entry d;

 if (!bit_entry(bios, 'd', &d)) {
  if (d.version == 1 && d.length >= 2) {
   u16 data = nv_ro16(bios, d.offset);
   if (data) {
    *ver = nv_ro08(bios, data + 0x00);
    switch (*ver) {
    case 0x21:
    case 0x30:
    case 0x40:
     *hdr = nv_ro08(bios, data + 0x01);
     *len = nv_ro08(bios, data + 0x02);
     *cnt = nv_ro08(bios, data + 0x03);
     return data;
    default:
     break;
    }
   }
  }
 }

 return 0x0000;
}
