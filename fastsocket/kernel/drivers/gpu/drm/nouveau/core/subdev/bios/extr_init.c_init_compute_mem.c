
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvbios_init {int offset; int bios; } ;
struct nouveau_devinit {int (* meminit ) (struct nouveau_devinit*) ;} ;


 scalar_t__ init_exec (struct nvbios_init*) ;
 int init_exec_force (struct nvbios_init*,int) ;
 struct nouveau_devinit* nouveau_devinit (int ) ;
 int stub1 (struct nouveau_devinit*) ;
 int trace (char*) ;

__attribute__((used)) static void
init_compute_mem(struct nvbios_init *init)
{
 struct nouveau_devinit *devinit = nouveau_devinit(init->bios);

 trace("COMPUTE_MEM\n");
 init->offset += 1;

 init_exec_force(init, 1);
 if (init_exec(init) && devinit->meminit)
  devinit->meminit(devinit);
 init_exec_force(init, 0);
}
