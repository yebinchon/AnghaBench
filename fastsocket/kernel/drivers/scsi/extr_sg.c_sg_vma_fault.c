
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_fault {int pgoff; struct page* page; } ;
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; scalar_t__ vm_private_data; } ;
struct page {int dummy; } ;
struct TYPE_3__ {unsigned long bufflen; int k_use_sg; int page_order; int * pages; } ;
struct TYPE_4__ {TYPE_1__ reserve; } ;
typedef TYPE_1__ Sg_scatter_hold ;
typedef TYPE_2__ Sg_fd ;


 int PAGE_SHIFT ;
 int SCSI_LOG_TIMEOUT (int,int ) ;
 int VM_FAULT_SIGBUS ;
 int get_page (struct page*) ;
 struct page* nth_page (int ,unsigned long) ;
 int printk (char*,unsigned long,int) ;

__attribute__((used)) static int
sg_vma_fault(struct vm_area_struct *vma, struct vm_fault *vmf)
{
 Sg_fd *sfp;
 unsigned long offset, len, sa;
 Sg_scatter_hold *rsv_schp;
 int k, length;

 if ((((void*)0) == vma) || (!(sfp = (Sg_fd *) vma->vm_private_data)))
  return VM_FAULT_SIGBUS;
 rsv_schp = &sfp->reserve;
 offset = vmf->pgoff << PAGE_SHIFT;
 if (offset >= rsv_schp->bufflen)
  return VM_FAULT_SIGBUS;
 SCSI_LOG_TIMEOUT(3, printk("sg_vma_fault: offset=%lu, scatg=%d\n",
       offset, rsv_schp->k_use_sg));
 sa = vma->vm_start;
 length = 1 << (PAGE_SHIFT + rsv_schp->page_order);
 for (k = 0; k < rsv_schp->k_use_sg && sa < vma->vm_end; k++) {
  len = vma->vm_end - sa;
  len = (len < length) ? len : length;
  if (offset < len) {
   struct page *page = nth_page(rsv_schp->pages[k],
           offset >> PAGE_SHIFT);
   get_page(page);
   vmf->page = page;
   return 0;
  }
  sa += len;
  offset -= len;
 }

 return VM_FAULT_SIGBUS;
}
