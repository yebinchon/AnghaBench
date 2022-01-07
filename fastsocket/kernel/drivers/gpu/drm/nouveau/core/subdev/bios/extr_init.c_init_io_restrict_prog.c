
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;


 int init_rdvgai (struct nvbios_init*,int ,int) ;
 int init_wr32 (struct nvbios_init*,int ,int ) ;
 int nv_ro08 (struct nouveau_bios*,scalar_t__) ;
 int nv_ro16 (struct nouveau_bios*,scalar_t__) ;
 int nv_ro32 (struct nouveau_bios*,scalar_t__) ;
 int trace (char*,...) ;

__attribute__((used)) static void
init_io_restrict_prog(struct nvbios_init *init)
{
 struct nouveau_bios *bios = init->bios;
 u16 port = nv_ro16(bios, init->offset + 1);
 u8 index = nv_ro08(bios, init->offset + 3);
 u8 mask = nv_ro08(bios, init->offset + 4);
 u8 shift = nv_ro08(bios, init->offset + 5);
 u8 count = nv_ro08(bios, init->offset + 6);
 u32 reg = nv_ro32(bios, init->offset + 7);
 u8 conf, i;

 trace("IO_RESTRICT_PROG\tR[0x%06x] = "
       "((0x%04x[0x%02x] & 0x%02x) >> %d) [{\n",
       reg, port, index, mask, shift);
 init->offset += 11;

 conf = (init_rdvgai(init, port, index) & mask) >> shift;
 for (i = 0; i < count; i++) {
  u32 data = nv_ro32(bios, init->offset);

  if (i == conf) {
   trace("\t0x%08x *\n", data);
   init_wr32(init, reg, data);
  } else {
   trace("\t0x%08x\n", data);
  }

  init->offset += 4;
 }
 trace("}]\n");
}
