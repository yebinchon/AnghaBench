
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_fifo_base {int base; int cache; int ramfc; int eng; int pgd; int vm; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_fifo_context_destroy (int *) ;
 int nouveau_gpuobj_ref (int *,int *) ;
 int nouveau_vm_ref (int *,int *,int ) ;

void
nv50_fifo_context_dtor(struct nouveau_object *object)
{
 struct nv50_fifo_base *base = (void *)object;
 nouveau_vm_ref(((void*)0), &base->vm, base->pgd);
 nouveau_gpuobj_ref(((void*)0), &base->pgd);
 nouveau_gpuobj_ref(((void*)0), &base->eng);
 nouveau_gpuobj_ref(((void*)0), &base->ramfc);
 nouveau_gpuobj_ref(((void*)0), &base->cache);
 nouveau_fifo_context_destroy(&base->base);
}
