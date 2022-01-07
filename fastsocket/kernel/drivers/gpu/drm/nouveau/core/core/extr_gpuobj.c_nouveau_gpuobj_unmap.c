
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_vma {scalar_t__ node; } ;


 int nouveau_vm_put (struct nouveau_vma*) ;
 int nouveau_vm_unmap (struct nouveau_vma*) ;

void
nouveau_gpuobj_unmap(struct nouveau_vma *vma)
{
 if (vma->node) {
  nouveau_vm_unmap(vma);
  nouveau_vm_put(vma);
 }
}
