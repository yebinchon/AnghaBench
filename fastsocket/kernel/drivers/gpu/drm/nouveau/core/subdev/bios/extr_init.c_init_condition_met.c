
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct nvbios_init {struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;


 scalar_t__ init_condition_table (struct nvbios_init*) ;
 int init_rd32 (struct nvbios_init*,int) ;
 int nv_ro32 (struct nouveau_bios*,scalar_t__) ;
 int trace (char*,int,int,int,int) ;

__attribute__((used)) static bool
init_condition_met(struct nvbios_init *init, u8 cond)
{
 struct nouveau_bios *bios = init->bios;
 u16 table = init_condition_table(init);
 if (table) {
  u32 reg = nv_ro32(bios, table + (cond * 12) + 0);
  u32 msk = nv_ro32(bios, table + (cond * 12) + 4);
  u32 val = nv_ro32(bios, table + (cond * 12) + 8);
  trace("\t[0x%02x] (R[0x%06x] & 0x%08x) == 0x%08x\n",
        cond, reg, msk, val);
  return (init_rd32(init, reg) & msk) == val;
 }
 return 0;
}
