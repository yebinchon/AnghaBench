
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nvbios_init {int bios; } ;


 int init_ram_restrict_strap (struct nvbios_init*) ;
 int init_ram_restrict_table (struct nvbios_init*) ;
 int nv_ro08 (int ,int) ;

__attribute__((used)) static u8
init_ram_restrict(struct nvbios_init *init)
{
 u8 strap = init_ram_restrict_strap(init);
 u16 table = init_ram_restrict_table(init);
 if (table)
  return nv_ro08(init->bios, table + strap);
 return 0x00;
}
