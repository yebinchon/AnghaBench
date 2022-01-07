
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct ttm_mem_reg {int start; scalar_t__ mem_type; } ;
struct radeon_vm {int last_flush; int fence; int * page_directory; } ;
struct radeon_ib {int fence; scalar_t__ length_dw; } ;
struct TYPE_6__ {scalar_t__ vram_base_offset; } ;
struct radeon_device {TYPE_3__ vm_manager; int dev; TYPE_2__* asic; } ;
struct radeon_bo_va {int valid; int flags; int eoffset; int soffset; } ;
struct radeon_bo {int dummy; } ;
struct TYPE_4__ {unsigned int pt_ring_index; } ;
struct TYPE_5__ {TYPE_1__ vm; } ;


 int EINVAL ;
 int ENOMEM ;
 int PAGE_SHIFT ;
 unsigned int RADEON_VM_BLOCK_SIZE ;
 int RADEON_VM_PAGE_SYSTEM ;
 int RADEON_VM_PAGE_VALID ;
 scalar_t__ TTM_PL_SYSTEM ;
 scalar_t__ TTM_PL_TT ;
 int dev_err (int ,char*,struct radeon_bo*,struct radeon_vm*) ;
 unsigned int radeon_bo_ngpu_pages (struct radeon_bo*) ;
 int radeon_fence_ref (int ) ;
 int radeon_fence_unref (int *) ;
 int radeon_ib_free (struct radeon_device*,struct radeon_ib*) ;
 int radeon_ib_get (struct radeon_device*,unsigned int,struct radeon_ib*,int *,unsigned int) ;
 int radeon_ib_schedule (struct radeon_device*,struct radeon_ib*,int *) ;
 int radeon_ib_sync_to (struct radeon_ib*,int ) ;
 struct radeon_bo_va* radeon_vm_bo_find (struct radeon_vm*,struct radeon_bo*) ;
 int radeon_vm_update_pdes (struct radeon_device*,struct radeon_vm*,struct radeon_ib*,int ,int ) ;
 int radeon_vm_update_ptes (struct radeon_device*,struct radeon_vm*,struct radeon_ib*,int ,int ,int,int ) ;

int radeon_vm_bo_update_pte(struct radeon_device *rdev,
       struct radeon_vm *vm,
       struct radeon_bo *bo,
       struct ttm_mem_reg *mem)
{
 unsigned ridx = rdev->asic->vm.pt_ring_index;
 struct radeon_ib ib;
 struct radeon_bo_va *bo_va;
 unsigned nptes, npdes, ndw;
 uint64_t addr;
 int r;


 if (vm->page_directory == ((void*)0))
  return 0;

 bo_va = radeon_vm_bo_find(vm, bo);
 if (bo_va == ((void*)0)) {
  dev_err(rdev->dev, "bo %p not in vm %p\n", bo, vm);
  return -EINVAL;
 }

 if (!bo_va->soffset) {
  dev_err(rdev->dev, "bo %p don't has a mapping in vm %p\n",
   bo, vm);
  return -EINVAL;
 }

 if ((bo_va->valid && mem) || (!bo_va->valid && mem == ((void*)0)))
  return 0;

 bo_va->flags &= ~RADEON_VM_PAGE_VALID;
 bo_va->flags &= ~RADEON_VM_PAGE_SYSTEM;
 if (mem) {
  addr = mem->start << PAGE_SHIFT;
  if (mem->mem_type != TTM_PL_SYSTEM) {
   bo_va->flags |= RADEON_VM_PAGE_VALID;
   bo_va->valid = 1;
  }
  if (mem->mem_type == TTM_PL_TT) {
   bo_va->flags |= RADEON_VM_PAGE_SYSTEM;
  } else {
   addr += rdev->vm_manager.vram_base_offset;
  }
 } else {
  addr = 0;
  bo_va->valid = 0;
 }

 nptes = radeon_bo_ngpu_pages(bo);


 npdes = (nptes >> RADEON_VM_BLOCK_SIZE) + 2;


 ndw = 64;

 if (RADEON_VM_BLOCK_SIZE > 11)

  ndw += (nptes >> 11) * 4;
 else


  ndw += (nptes >> RADEON_VM_BLOCK_SIZE) * 4;


 ndw += nptes * 2;


 ndw += (npdes >> 11) * 4;


 ndw += npdes * 2;


 if (ndw > 0xfffff)
  return -ENOMEM;

 r = radeon_ib_get(rdev, ridx, &ib, ((void*)0), ndw * 4);
 ib.length_dw = 0;

 r = radeon_vm_update_pdes(rdev, vm, &ib, bo_va->soffset, bo_va->eoffset);
 if (r) {
  radeon_ib_free(rdev, &ib);
  return r;
 }

 radeon_vm_update_ptes(rdev, vm, &ib, bo_va->soffset, bo_va->eoffset,
         addr, bo_va->flags);

 radeon_ib_sync_to(&ib, vm->fence);
 r = radeon_ib_schedule(rdev, &ib, ((void*)0));
 if (r) {
  radeon_ib_free(rdev, &ib);
  return r;
 }
 radeon_fence_unref(&vm->fence);
 vm->fence = radeon_fence_ref(ib.fence);
 radeon_ib_free(rdev, &ib);
 radeon_fence_unref(&vm->last_flush);

 return 0;
}
