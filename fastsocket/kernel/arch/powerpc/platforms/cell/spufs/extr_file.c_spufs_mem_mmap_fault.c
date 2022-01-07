
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_fault {unsigned long pgoff; scalar_t__ virtual_address; } ;
struct vm_area_struct {int vm_start; int vm_page_prot; int vm_mm; TYPE_1__* vm_file; } ;
struct spu_state {int use_big_pages; TYPE_2__* lscsa; } ;
struct spu_context {scalar_t__ state; TYPE_3__* spu; struct spu_state csa; } ;
struct TYPE_6__ {unsigned long local_store_phys; } ;
struct TYPE_5__ {scalar_t__ ls; } ;
struct TYPE_4__ {struct spu_context* private_data; } ;


 int BUG_ON (int) ;
 unsigned long LS_SIZE ;
 int MMU_PAGE_64K ;
 unsigned long PAGE_SHIFT ;
 scalar_t__ SPU_STATE_SAVED ;
 int VM_FAULT_NOPAGE ;
 int VM_FAULT_SIGBUS ;
 int get_slice_psize (int ,unsigned long) ;
 int pgprot_cached (int ) ;
 int pgprot_noncached_wc (int ) ;
 int pr_debug (char*,unsigned long,unsigned long) ;
 scalar_t__ spu_acquire (struct spu_context*) ;
 int spu_release (struct spu_context*) ;
 int vm_insert_pfn (struct vm_area_struct*,unsigned long,unsigned long) ;
 unsigned long vmalloc_to_pfn (scalar_t__) ;

__attribute__((used)) static int
spufs_mem_mmap_fault(struct vm_area_struct *vma, struct vm_fault *vmf)
{
 struct spu_context *ctx = vma->vm_file->private_data;
 unsigned long address = (unsigned long)vmf->virtual_address;
 unsigned long pfn, offset;
 offset = vmf->pgoff << PAGE_SHIFT;
 if (offset >= LS_SIZE)
  return VM_FAULT_SIGBUS;

 pr_debug("spufs_mem_mmap_fault address=0x%lx, offset=0x%lx\n",
   address, offset);

 if (spu_acquire(ctx))
  return VM_FAULT_NOPAGE;

 if (ctx->state == SPU_STATE_SAVED) {
  vma->vm_page_prot = pgprot_cached(vma->vm_page_prot);
  pfn = vmalloc_to_pfn(ctx->csa.lscsa->ls + offset);
 } else {
  vma->vm_page_prot = pgprot_noncached_wc(vma->vm_page_prot);
  pfn = (ctx->spu->local_store_phys + offset) >> PAGE_SHIFT;
 }
 vm_insert_pfn(vma, address, pfn);

 spu_release(ctx);

 return VM_FAULT_NOPAGE;
}
