
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;


 int init_wrvgai (struct nvbios_init*,int ,int ,int ) ;
 int nv_ro08 (struct nouveau_bios*,scalar_t__) ;
 int nv_ro16 (struct nouveau_bios*,scalar_t__) ;
 int trace (char*,int ,int ,int ) ;

__attribute__((used)) static void
init_zm_index_io(struct nvbios_init *init)
{
 struct nouveau_bios *bios = init->bios;
 u16 port = nv_ro16(bios, init->offset + 1);
 u8 index = nv_ro08(bios, init->offset + 3);
 u8 data = nv_ro08(bios, init->offset + 4);

 trace("ZM_INDEX_IO\tI[0x%04x][0x%02x] = 0x%02x\n", port, index, data);
 init->offset += 5;

 init_wrvgai(init, port, index, data);
}
