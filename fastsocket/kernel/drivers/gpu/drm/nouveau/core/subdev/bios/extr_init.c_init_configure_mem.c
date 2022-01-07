
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct nvbios_init {int offset; struct nouveau_bios* bios; } ;
struct TYPE_2__ {int major; } ;
struct nouveau_bios {TYPE_1__ version; } ;


 int bmp_ddr_seq_table (struct nouveau_bios*) ;
 int bmp_sdr_seq_table (struct nouveau_bios*) ;
 int init_configure_mem_clk (struct nvbios_init*) ;
 int init_done (struct nvbios_init*) ;
 int init_exec_force (struct nvbios_init*,int) ;
 int init_rdvgai (struct nvbios_init*,int,int) ;
 int init_wr32 (struct nvbios_init*,int,int) ;
 int init_wrvgai (struct nvbios_init*,int,int,int) ;
 int nv_ro08 (struct nouveau_bios*,int) ;
 int nv_ro32 (struct nouveau_bios*,int) ;
 int trace (char*) ;

__attribute__((used)) static void
init_configure_mem(struct nvbios_init *init)
{
 struct nouveau_bios *bios = init->bios;
 u16 mdata, sdata;
 u32 addr, data;

 trace("CONFIGURE_MEM\n");
 init->offset += 1;

 if (bios->version.major > 2) {
  init_done(init);
  return;
 }
 init_exec_force(init, 1);

 mdata = init_configure_mem_clk(init);
 sdata = bmp_sdr_seq_table(bios);
 if (nv_ro08(bios, mdata) & 0x01)
  sdata = bmp_ddr_seq_table(bios);
 mdata += 6;

 data = init_rdvgai(init, 0x03c4, 0x01);
 init_wrvgai(init, 0x03c4, 0x01, data | 0x20);

 while ((addr = nv_ro32(bios, sdata)) != 0xffffffff) {
  switch (addr) {
  case 0x10021c:
  case 0x1002d0:
  case 0x1002d4:
   data = 0x00000001;
   break;
  default:
   data = nv_ro32(bios, mdata);
   mdata += 4;
   if (data == 0xffffffff)
    continue;
   break;
  }

  init_wr32(init, addr, data);
 }

 init_exec_force(init, 0);
}
