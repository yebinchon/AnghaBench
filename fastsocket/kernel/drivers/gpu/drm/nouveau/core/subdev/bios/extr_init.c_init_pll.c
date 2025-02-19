
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;


 int init_prog_pll (struct nvbios_init*,int,int) ;
 int nv_ro16 (struct nouveau_bios*,scalar_t__) ;
 int nv_ro32 (struct nouveau_bios*,scalar_t__) ;
 int trace (char*,int,int) ;

__attribute__((used)) static void
init_pll(struct nvbios_init *init)
{
 struct nouveau_bios *bios = init->bios;
 u32 reg = nv_ro32(bios, init->offset + 1);
 u32 freq = nv_ro16(bios, init->offset + 5) * 10;

 trace("PLL\tR[0x%06x] =PLL= %dkHz\n", reg, freq);
 init->offset += 7;

 init_prog_pll(init, reg, freq);
}
