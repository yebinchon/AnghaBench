
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nouveau_mem {TYPE_1__* vma; } ;
struct TYPE_3__ {scalar_t__ node; } ;


 int nouveau_vm_put (TYPE_1__*) ;
 int nouveau_vm_unmap (TYPE_1__*) ;

__attribute__((used)) static inline void
nouveau_mem_node_cleanup(struct nouveau_mem *node)
{
 if (node->vma[0].node) {
  nouveau_vm_unmap(&node->vma[0]);
  nouveau_vm_put(&node->vma[0]);
 }

 if (node->vma[1].node) {
  nouveau_vm_unmap(&node->vma[1]);
  nouveau_vm_put(&node->vma[1]);
 }
}
