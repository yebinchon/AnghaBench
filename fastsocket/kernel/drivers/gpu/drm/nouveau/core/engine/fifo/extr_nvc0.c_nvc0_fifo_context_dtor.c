
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvc0_fifo_base {int base; int pgd; int vm; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_fifo_context_destroy (int *) ;
 int nouveau_gpuobj_ref (int *,int *) ;
 int nouveau_vm_ref (int *,int *,int ) ;

__attribute__((used)) static void
nvc0_fifo_context_dtor(struct nouveau_object *object)
{
 struct nvc0_fifo_base *base = (void *)object;
 nouveau_vm_ref(((void*)0), &base->vm, base->pgd);
 nouveau_gpuobj_ref(((void*)0), &base->pgd);
 nouveau_fifo_context_destroy(&base->base);
}
