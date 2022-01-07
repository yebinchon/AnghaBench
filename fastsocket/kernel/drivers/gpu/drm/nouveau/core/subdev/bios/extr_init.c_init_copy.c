
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;


 int init_rd32 (struct nvbios_init*,int ) ;
 int init_rdvgai (struct nvbios_init*,int ,int) ;
 int init_shift (int ,int) ;
 int init_wrvgai (struct nvbios_init*,int ,int,int) ;
 int nv_ro08 (struct nouveau_bios*,scalar_t__) ;
 int nv_ro16 (struct nouveau_bios*,scalar_t__) ;
 int nv_ro32 (struct nouveau_bios*,scalar_t__) ;
 int trace (char*,int ,int,int,int ,char*,int,int) ;

__attribute__((used)) static void
init_copy(struct nvbios_init *init)
{
 struct nouveau_bios *bios = init->bios;
 u32 reg = nv_ro32(bios, init->offset + 1);
 u8 shift = nv_ro08(bios, init->offset + 5);
 u8 smask = nv_ro08(bios, init->offset + 6);
 u16 port = nv_ro16(bios, init->offset + 7);
 u8 index = nv_ro08(bios, init->offset + 9);
 u8 mask = nv_ro08(bios, init->offset + 10);
 u8 data;

 trace("COPY\t0x%04x[0x%02x] &= 0x%02x |= "
       "((R[0x%06x] %s 0x%02x) & 0x%02x)\n",
       port, index, mask, reg, (shift & 0x80) ? "<<" : ">>",
       (shift & 0x80) ? (0x100 - shift) : shift, smask);
 init->offset += 11;

 data = init_rdvgai(init, port, index) & mask;
 data |= init_shift(init_rd32(init, reg), shift) & smask;
 init_wrvgai(init, port, index, data);
}
