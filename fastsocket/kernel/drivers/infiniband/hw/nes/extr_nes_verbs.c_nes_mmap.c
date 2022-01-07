
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int vm_pgoff; struct nes_ucontext* vm_private_data; int vm_page_prot; scalar_t__ vm_start; scalar_t__ vm_end; } ;
struct nes_vnic {struct nes_device* nesdev; } ;
struct TYPE_4__ {int sq_vbase; } ;
struct nes_ucontext {int mmap_wq_offset; int* mmap_db_index; int allocated_doorbells; TYPE_2__ hwqp; struct nes_ucontext** mmap_nesqp; int allocated_wqs; } ;
struct nes_qp {int mmap_wq_offset; int* mmap_db_index; int allocated_doorbells; TYPE_2__ hwqp; struct nes_qp** mmap_nesqp; int allocated_wqs; } ;
struct nes_hw_qp_wqe {int dummy; } ;
struct nes_device {int doorbell_start; int base_doorbell_index; TYPE_1__* nesadapter; } ;
struct ib_ucontext {int device; } ;
struct TYPE_3__ {int max_qp_wr; } ;


 int EAGAIN ;
 int EFAULT ;
 int ENOSYS ;
 int NES_DBG_MMAP ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 scalar_t__ io_remap_pfn_range (struct vm_area_struct*,scalar_t__,int,int,int ) ;
 int nes_debug (int ,char*,...) ;
 int pgprot_noncached (int ) ;
 scalar_t__ remap_pfn_range (struct vm_area_struct*,scalar_t__,int,scalar_t__,int ) ;
 int test_bit (unsigned long,int ) ;
 struct nes_ucontext* to_nesucontext (struct ib_ucontext*) ;
 struct nes_vnic* to_nesvnic (int ) ;
 int virt_to_phys (int ) ;

__attribute__((used)) static int nes_mmap(struct ib_ucontext *context, struct vm_area_struct *vma)
{
 unsigned long index;
 struct nes_vnic *nesvnic = to_nesvnic(context->device);
 struct nes_device *nesdev = nesvnic->nesdev;

 struct nes_ucontext *nes_ucontext;
 struct nes_qp *nesqp;

 nes_ucontext = to_nesucontext(context);


 if (vma->vm_pgoff >= nes_ucontext->mmap_wq_offset) {
  index = (vma->vm_pgoff - nes_ucontext->mmap_wq_offset) * PAGE_SIZE;
  index /= ((sizeof(struct nes_hw_qp_wqe) * nesdev->nesadapter->max_qp_wr * 2) +
    PAGE_SIZE-1) & (~(PAGE_SIZE-1));
  if (!test_bit(index, nes_ucontext->allocated_wqs)) {
   nes_debug(NES_DBG_MMAP, "wq %lu not allocated\n", index);
   return -EFAULT;
  }
  nesqp = nes_ucontext->mmap_nesqp[index];
  if (nesqp == ((void*)0)) {
   nes_debug(NES_DBG_MMAP, "wq %lu has a NULL QP base.\n", index);
   return -EFAULT;
  }
  if (remap_pfn_range(vma, vma->vm_start,
    virt_to_phys(nesqp->hwqp.sq_vbase) >> PAGE_SHIFT,
    vma->vm_end - vma->vm_start,
    vma->vm_page_prot)) {
   nes_debug(NES_DBG_MMAP, "remap_pfn_range failed.\n");
   return -EAGAIN;
  }
  vma->vm_private_data = nesqp;
  return 0;
 } else {
  index = vma->vm_pgoff;
  if (!test_bit(index, nes_ucontext->allocated_doorbells))
   return -EFAULT;

  vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
  if (io_remap_pfn_range(vma, vma->vm_start,
    (nesdev->doorbell_start +
    ((nes_ucontext->mmap_db_index[index] - nesdev->base_doorbell_index) * 4096))
    >> PAGE_SHIFT, PAGE_SIZE, vma->vm_page_prot))
   return -EAGAIN;
  vma->vm_private_data = nes_ucontext;
  return 0;
 }

 return -ENOSYS;
}
