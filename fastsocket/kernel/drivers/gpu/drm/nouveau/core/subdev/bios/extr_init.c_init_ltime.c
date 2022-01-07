
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;


 scalar_t__ init_exec (struct nvbios_init*) ;
 int mdelay (int ) ;
 int nv_ro16 (struct nouveau_bios*,scalar_t__) ;
 int trace (char*,int ) ;

__attribute__((used)) static void
init_ltime(struct nvbios_init *init)
{
 struct nouveau_bios *bios = init->bios;
 u16 msec = nv_ro16(bios, init->offset + 1);

 trace("LTIME\t0x%04x\n", msec);
 init->offset += 3;

 if (init_exec(init))
  mdelay(msec);
}
