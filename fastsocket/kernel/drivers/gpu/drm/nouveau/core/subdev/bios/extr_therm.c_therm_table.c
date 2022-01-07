
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nouveau_bios {int dummy; } ;
struct bit_entry {int version; scalar_t__ offset; } ;


 int bit_entry (struct nouveau_bios*,char,struct bit_entry*) ;
 int nv_error (struct nouveau_bios*,char*,int) ;
 int nv_ro08 (struct nouveau_bios*,int) ;
 int nv_ro16 (struct nouveau_bios*,scalar_t__) ;

__attribute__((used)) static u16
therm_table(struct nouveau_bios *bios, u8 *ver, u8 *hdr, u8 *len, u8 *cnt)
{
 struct bit_entry bit_P;
 u16 therm = 0;

 if (!bit_entry(bios, 'P', &bit_P)) {
  if (bit_P.version == 1)
   therm = nv_ro16(bios, bit_P.offset + 12);
  else if (bit_P.version == 2)
   therm = nv_ro16(bios, bit_P.offset + 16);
  else
   nv_error(bios,
    "unknown offset for thermal in BIT P %d\n",
    bit_P.version);
 }


 if (!therm)
  return 0x0000;

 *ver = nv_ro08(bios, therm + 0);
 *hdr = nv_ro08(bios, therm + 1);
 *len = nv_ro08(bios, therm + 2);
 *cnt = nv_ro08(bios, therm + 3);

 return therm + nv_ro08(bios, therm + 1);
}
