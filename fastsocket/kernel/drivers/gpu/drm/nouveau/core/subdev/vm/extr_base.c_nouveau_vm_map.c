
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_vma {int dummy; } ;
struct nouveau_mem {int dummy; } ;


 int nouveau_vm_map_at (struct nouveau_vma*,int ,struct nouveau_mem*) ;

void
nouveau_vm_map(struct nouveau_vma *vma, struct nouveau_mem *node)
{
 nouveau_vm_map_at(vma, 0, node);
}
