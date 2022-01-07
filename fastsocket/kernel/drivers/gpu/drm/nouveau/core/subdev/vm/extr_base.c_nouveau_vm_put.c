
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nouveau_vmmgr {int pgt_bits; scalar_t__ spg_shift; } ;
struct nouveau_vma {TYPE_2__* node; struct nouveau_vm* vm; } ;
struct TYPE_3__ {int mutex; } ;
struct nouveau_vm {TYPE_1__ mm; struct nouveau_vmmgr* vmm; } ;
struct TYPE_4__ {int offset; int length; scalar_t__ type; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nouveau_mm_free (TYPE_1__*,TYPE_2__**) ;
 int nouveau_vm_unmap_pgt (struct nouveau_vm*,int,int,int) ;
 scalar_t__ unlikely (int ) ;

void
nouveau_vm_put(struct nouveau_vma *vma)
{
 struct nouveau_vm *vm = vma->vm;
 struct nouveau_vmmgr *vmm = vm->vmm;
 u32 fpde, lpde;

 if (unlikely(vma->node == ((void*)0)))
  return;
 fpde = (vma->node->offset >> vmm->pgt_bits);
 lpde = (vma->node->offset + vma->node->length - 1) >> vmm->pgt_bits;

 mutex_lock(&vm->mm.mutex);
 nouveau_vm_unmap_pgt(vm, vma->node->type != vmm->spg_shift, fpde, lpde);
 nouveau_mm_free(&vm->mm, &vma->node);
 mutex_unlock(&vm->mm.mutex);
}
