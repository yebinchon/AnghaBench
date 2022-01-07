
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct nouveau_vma {TYPE_1__* node; } ;
struct TYPE_2__ {scalar_t__ length; } ;


 int nouveau_vm_unmap_at (struct nouveau_vma*,int ,int) ;

void
nouveau_vm_unmap(struct nouveau_vma *vma)
{
 nouveau_vm_unmap_at(vma, 0, (u64)vma->node->length << 12);
}
