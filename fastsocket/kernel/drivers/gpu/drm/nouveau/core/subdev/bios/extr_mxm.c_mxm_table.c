
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nouveau_bios {int dummy; } ;
struct bit_entry {int version; int length; int offset; } ;


 scalar_t__ bit_entry (struct nouveau_bios*,char,struct bit_entry*) ;
 int nv_debug (struct nouveau_bios*,char*) ;
 int nv_warn (struct nouveau_bios*,char*,int,int) ;

u16
mxm_table(struct nouveau_bios *bios, u8 *ver, u8 *hdr)
{
 struct bit_entry x;

 if (bit_entry(bios, 'x', &x)) {
  nv_debug(bios, "BIT 'x' table not present\n");
  return 0x0000;
 }

 *ver = x.version;
 *hdr = x.length;
 if (*ver != 1 || *hdr < 3) {
  nv_warn(bios, "BIT 'x' table %d/%d unknown\n", *ver, *hdr);
  return 0x0000;
 }

 return x.offset;
}
