
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;


 scalar_t__ nv_ro16 (struct nouveau_bios*,scalar_t__) ;
 int trace (char*,scalar_t__) ;

__attribute__((used)) static void
init_jump(struct nvbios_init *init)
{
 struct nouveau_bios *bios = init->bios;
 u16 offset = nv_ro16(bios, init->offset + 1);

 trace("JUMP\t0x%04x\n", offset);
 init->offset = offset;
}
