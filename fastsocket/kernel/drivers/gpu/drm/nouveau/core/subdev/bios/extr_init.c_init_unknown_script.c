
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nouveau_bios {int dummy; } ;


 int init_table (struct nouveau_bios*,int*) ;
 int nv_ro16 (struct nouveau_bios*,int) ;

__attribute__((used)) static u16
init_unknown_script(struct nouveau_bios *bios)
{
 u16 len, data = init_table(bios, &len);
 if (data && len >= 16)
  return nv_ro16(bios, data + 14);
 return 0x0000;
}
