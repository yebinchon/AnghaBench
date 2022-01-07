
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;


 int init_condition_met (struct nvbios_init*,int ) ;
 int init_exec_set (struct nvbios_init*,int) ;
 int nv_ro08 (struct nouveau_bios*,scalar_t__) ;
 int trace (char*,int ) ;

__attribute__((used)) static void
init_condition(struct nvbios_init *init)
{
 struct nouveau_bios *bios = init->bios;
 u8 cond = nv_ro08(bios, init->offset + 1);

 trace("CONDITION\t0x%02x\n", cond);
 init->offset += 2;

 if (!init_condition_met(init, cond))
  init_exec_set(init, 0);
}
