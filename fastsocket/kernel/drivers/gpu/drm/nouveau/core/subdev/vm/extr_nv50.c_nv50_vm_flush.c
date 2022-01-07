
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_vm {int vmm; int * engref; } ;
struct nouveau_engine {int (* tlb_flush ) (struct nouveau_engine*) ;} ;


 int NVDEV_SUBDEV_NR ;
 scalar_t__ atomic_read (int *) ;
 struct nouveau_engine* nouveau_engine (int ,int) ;
 int stub1 (struct nouveau_engine*) ;

__attribute__((used)) static void
nv50_vm_flush(struct nouveau_vm *vm)
{
 struct nouveau_engine *engine;
 int i;

 for (i = 0; i < NVDEV_SUBDEV_NR; i++) {
  if (atomic_read(&vm->engref[i])) {
   engine = nouveau_engine(vm->vmm, i);
   if (engine && engine->tlb_flush)
    engine->tlb_flush(engine);
  }
 }
}
