
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;


 int init_rd32 (struct nvbios_init*,scalar_t__) ;
 scalar_t__ init_tmds_reg (struct nvbios_init*,int) ;
 int init_wr32 (struct nvbios_init*,scalar_t__,int) ;
 int nv_ro08 (struct nouveau_bios*,scalar_t__) ;
 int trace (char*,int,int,int,int) ;

__attribute__((used)) static void
init_tmds(struct nvbios_init *init)
{
 struct nouveau_bios *bios = init->bios;
 u8 tmds = nv_ro08(bios, init->offset + 1);
 u8 addr = nv_ro08(bios, init->offset + 2);
 u8 mask = nv_ro08(bios, init->offset + 3);
 u8 data = nv_ro08(bios, init->offset + 4);
 u32 reg = init_tmds_reg(init, tmds);

 trace("TMDS\tT[0x%02x][0x%02x] &= 0x%02x |= 0x%02x\n",
       tmds, addr, mask, data);
 init->offset += 5;

 if (reg == 0)
  return;

 init_wr32(init, reg + 0, addr | 0x00010000);
 init_wr32(init, reg + 4, data | (init_rd32(init, reg + 4) & mask));
 init_wr32(init, reg + 0, addr);
}
