
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct nvbios_init {scalar_t__ repeat; scalar_t__ repend; scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;


 scalar_t__ nv_ro08 (struct nouveau_bios*,scalar_t__) ;
 int nvbios_exec (struct nvbios_init*) ;
 int trace (char*,scalar_t__) ;

__attribute__((used)) static void
init_repeat(struct nvbios_init *init)
{
 struct nouveau_bios *bios = init->bios;
 u8 count = nv_ro08(bios, init->offset + 1);
 u16 repeat = init->repeat;

 trace("REPEAT\t0x%02x\n", count);
 init->offset += 2;

 init->repeat = init->offset;
 init->repend = init->offset;
 while (count--) {
  init->offset = init->repeat;
  nvbios_exec(init);
  if (count)
   trace("REPEAT\t0x%02x\n", count);
 }
 init->offset = init->repend;
 init->repeat = repeat;
}
