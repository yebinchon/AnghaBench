
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;


 int init_wr32 (struct nvbios_init*,int,int) ;
 int nv_ro32 (struct nouveau_bios*,scalar_t__) ;
 int trace (char*,int,int) ;

__attribute__((used)) static void
init_zm_reg(struct nvbios_init *init)
{
 struct nouveau_bios *bios = init->bios;
 u32 addr = nv_ro32(bios, init->offset + 1);
 u32 data = nv_ro32(bios, init->offset + 5);

 trace("ZM_REG\tR[0x%06x] = 0x%08x\n", addr, data);
 init->offset += 9;

 if (addr == 0x000200)
  data |= 0x00000001;

 init_wr32(init, addr, data);
}
