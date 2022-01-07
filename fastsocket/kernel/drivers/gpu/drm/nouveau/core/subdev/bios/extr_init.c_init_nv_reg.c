
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;


 int init_mask (struct nvbios_init*,int ,int ,int ) ;
 int nv_ro32 (struct nouveau_bios*,scalar_t__) ;
 int trace (char*,int ,int ,int ) ;

__attribute__((used)) static void
init_nv_reg(struct nvbios_init *init)
{
 struct nouveau_bios *bios = init->bios;
 u32 reg = nv_ro32(bios, init->offset + 1);
 u32 mask = nv_ro32(bios, init->offset + 5);
 u32 data = nv_ro32(bios, init->offset + 9);

 trace("NV_REG\tR[0x%06x] &= 0x%08x |= 0x%08x\n", reg, mask, data);
 init->offset += 13;

 init_mask(init, reg, ~mask, data);
}
