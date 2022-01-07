
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nouveau_vmmgr {int pgt_bits; } ;
struct nouveau_vm {int refcount; int fpde; int lpde; struct nouveau_vm* pgt; int mm; struct nouveau_vmmgr* vmm; int pgd_list; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct nouveau_vm* kcalloc (int,int,int ) ;
 int kfree (struct nouveau_vm*) ;
 struct nouveau_vm* kzalloc (int,int ) ;
 int nouveau_mm_init (int *,int,int,int) ;

int
nouveau_vm_create(struct nouveau_vmmgr *vmm, u64 offset, u64 length,
    u64 mm_offset, u32 block, struct nouveau_vm **pvm)
{
 struct nouveau_vm *vm;
 u64 mm_length = (offset + length) - mm_offset;
 int ret;

 vm = kzalloc(sizeof(*vm), GFP_KERNEL);
 if (!vm)
  return -ENOMEM;

 INIT_LIST_HEAD(&vm->pgd_list);
 vm->vmm = vmm;
 vm->refcount = 1;
 vm->fpde = offset >> (vmm->pgt_bits + 12);
 vm->lpde = (offset + length - 1) >> (vmm->pgt_bits + 12);

 vm->pgt = kcalloc(vm->lpde - vm->fpde + 1, sizeof(*vm->pgt), GFP_KERNEL);
 if (!vm->pgt) {
  kfree(vm);
  return -ENOMEM;
 }

 ret = nouveau_mm_init(&vm->mm, mm_offset >> 12, mm_length >> 12,
         block >> 12);
 if (ret) {
  kfree(vm->pgt);
  kfree(vm);
  return ret;
 }

 *pvm = vm;

 return 0;
}
