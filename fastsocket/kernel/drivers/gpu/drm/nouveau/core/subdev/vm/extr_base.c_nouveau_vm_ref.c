
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_vm {scalar_t__ refcount; } ;
struct nouveau_gpuobj {int dummy; } ;


 int nouveau_vm_del (struct nouveau_vm*) ;
 int nouveau_vm_link (struct nouveau_vm*,struct nouveau_gpuobj*) ;
 int nouveau_vm_unlink (struct nouveau_vm*,struct nouveau_gpuobj*) ;

int
nouveau_vm_ref(struct nouveau_vm *ref, struct nouveau_vm **ptr,
        struct nouveau_gpuobj *pgd)
{
 struct nouveau_vm *vm;
 int ret;

 vm = ref;
 if (vm) {
  ret = nouveau_vm_link(vm, pgd);
  if (ret)
   return ret;

  vm->refcount++;
 }

 vm = *ptr;
 *ptr = ref;

 if (vm) {
  nouveau_vm_unlink(vm, pgd);

  if (--vm->refcount == 0)
   nouveau_vm_del(vm);
 }

 return 0;
}
