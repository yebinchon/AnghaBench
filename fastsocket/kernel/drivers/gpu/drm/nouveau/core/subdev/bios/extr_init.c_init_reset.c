
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;


 int init_exec_force (struct nvbios_init*,int) ;
 int init_mask (struct nvbios_init*,int,int,int) ;
 int init_wr32 (struct nvbios_init*,int,int) ;
 int nv_ro32 (struct nouveau_bios*,scalar_t__) ;
 int trace (char*,int,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void
init_reset(struct nvbios_init *init)
{
 struct nouveau_bios *bios = init->bios;
 u32 reg = nv_ro32(bios, init->offset + 1);
 u32 data1 = nv_ro32(bios, init->offset + 5);
 u32 data2 = nv_ro32(bios, init->offset + 9);
 u32 savepci19;

 trace("RESET\tR[0x%08x] = 0x%08x, 0x%08x", reg, data1, data2);
 init->offset += 13;
 init_exec_force(init, 1);

 savepci19 = init_mask(init, 0x00184c, 0x00000f00, 0x00000000);
 init_wr32(init, reg, data1);
 udelay(10);
 init_wr32(init, reg, data2);
 init_wr32(init, 0x00184c, savepci19);
 init_mask(init, 0x001850, 0x00000001, 0x00000000);

 init_exec_force(init, 0);
}
