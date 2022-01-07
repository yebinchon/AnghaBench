
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct nvbios_init {int offset; struct nouveau_bios* bios; } ;
struct TYPE_2__ {int major; } ;
struct nouveau_bios {TYPE_1__ version; } ;


 int init_configure_mem_clk (struct nvbios_init*) ;
 int init_done (struct nvbios_init*) ;
 int init_exec_force (struct nvbios_init*,int) ;
 int init_prog_pll (struct nvbios_init*,int,int) ;
 int nv_ro08 (struct nouveau_bios*,int) ;
 int nv_ro16 (struct nouveau_bios*,int) ;
 int trace (char*) ;

__attribute__((used)) static void
init_configure_clk(struct nvbios_init *init)
{
 struct nouveau_bios *bios = init->bios;
 u16 mdata, clock;

 trace("CONFIGURE_CLK\n");
 init->offset += 1;

 if (bios->version.major > 2) {
  init_done(init);
  return;
 }
 init_exec_force(init, 1);

 mdata = init_configure_mem_clk(init);


 clock = nv_ro16(bios, mdata + 4) * 10;
 init_prog_pll(init, 0x680500, clock);


 clock = nv_ro16(bios, mdata + 2) * 10;
 if (nv_ro08(bios, mdata) & 0x01)
  clock *= 2;
 init_prog_pll(init, 0x680504, clock);

 init_exec_force(init, 0);
}
