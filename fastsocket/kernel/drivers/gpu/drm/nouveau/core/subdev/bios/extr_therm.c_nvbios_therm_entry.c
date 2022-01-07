
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nouveau_bios {int dummy; } ;


 int therm_table (struct nouveau_bios*,int*,int*,int*,int*) ;

__attribute__((used)) static u16
nvbios_therm_entry(struct nouveau_bios *bios, int idx, u8 *ver, u8 *len)
{
 u8 hdr, cnt;
 u16 therm = therm_table(bios, ver, &hdr, len, &cnt);
 if (therm && idx < cnt)
  return therm + idx * *len;
 return 0x0000;
}
