
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* u16 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;


 int init_rdvgai (struct nvbios_init*,void*,int) ;
 int init_wrvgai (struct nvbios_init*,void*,int,int) ;
 int nv_ro08 (struct nouveau_bios*,scalar_t__) ;
 void* nv_ro16 (struct nouveau_bios*,scalar_t__) ;
 int trace (char*,void*,int,int,int) ;

__attribute__((used)) static void
init_index_io(struct nvbios_init *init)
{
 struct nouveau_bios *bios = init->bios;
 u16 port = nv_ro16(bios, init->offset + 1);
 u8 index = nv_ro16(bios, init->offset + 3);
 u8 mask = nv_ro08(bios, init->offset + 4);
 u8 data = nv_ro08(bios, init->offset + 5);
 u8 value;

 trace("INDEX_IO\tI[0x%04x][0x%02x] &= 0x%02x |= 0x%02x\n",
       port, index, mask, data);
 init->offset += 6;

 value = init_rdvgai(init, port, index) & mask;
 init_wrvgai(init, port, index, data | value);
}
