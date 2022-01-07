
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_type_manager {struct nouveau_vm* priv; } ;
struct nouveau_vm {int dummy; } ;


 int nouveau_vm_ref (int *,struct nouveau_vm**,int *) ;

__attribute__((used)) static int
nv04_gart_manager_fini(struct ttm_mem_type_manager *man)
{
 struct nouveau_vm *vm = man->priv;
 nouveau_vm_ref(((void*)0), &vm, ((void*)0));
 man->priv = ((void*)0);
 return 0;
}
