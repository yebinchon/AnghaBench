
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct nouveau_vmmgr {scalar_t__ spg_shift; int pgt_bits; int (* flush ) (struct nouveau_vm*) ;int (* unmap ) (struct nouveau_gpuobj*,int,int) ;} ;
struct nouveau_vma {TYPE_1__* node; struct nouveau_vm* vm; } ;
struct nouveau_vm {int fpde; TYPE_2__* pgt; struct nouveau_vmmgr* vmm; } ;
struct nouveau_gpuobj {int dummy; } ;
struct TYPE_4__ {struct nouveau_gpuobj** obj; } ;
struct TYPE_3__ {scalar_t__ type; int offset; } ;


 int stub1 (struct nouveau_gpuobj*,int,int) ;
 int stub2 (struct nouveau_vm*) ;
 scalar_t__ unlikely (int) ;

void
nouveau_vm_unmap_at(struct nouveau_vma *vma, u64 delta, u64 length)
{
 struct nouveau_vm *vm = vma->vm;
 struct nouveau_vmmgr *vmm = vm->vmm;
 int big = vma->node->type != vmm->spg_shift;
 u32 offset = vma->node->offset + (delta >> 12);
 u32 bits = vma->node->type - 12;
 u32 num = length >> vma->node->type;
 u32 pde = (offset >> vmm->pgt_bits) - vm->fpde;
 u32 pte = (offset & ((1 << vmm->pgt_bits) - 1)) >> bits;
 u32 max = 1 << (vmm->pgt_bits - bits);
 u32 end, len;

 while (num) {
  struct nouveau_gpuobj *pgt = vm->pgt[pde].obj[big];

  end = (pte + num);
  if (unlikely(end >= max))
   end = max;
  len = end - pte;

  vmm->unmap(pgt, pte, len);

  num -= len;
  pte += len;
  if (unlikely(end >= max)) {
   pde++;
   pte = 0;
  }
 }

 vmm->flush(vm);
}
