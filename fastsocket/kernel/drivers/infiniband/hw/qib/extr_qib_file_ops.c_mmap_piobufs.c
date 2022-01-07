
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned int vm_end; unsigned int vm_start; int vm_flags; int vm_page_prot; } ;
struct qib_devdata {unsigned int palign; unsigned int physaddr; int pcidev; } ;
struct qib_ctxtdata {int dummy; } ;


 int EINVAL ;
 unsigned long PAGE_SHIFT ;
 int VM_DONTCOPY ;
 int VM_DONTEXPAND ;
 int VM_MAYREAD ;
 int _PAGE_GUARDED ;
 int _PAGE_NO_CACHE ;
 int _PAGE_WRITETHRU ;
 int io_remap_pfn_range (struct vm_area_struct*,unsigned int,unsigned long,unsigned int,int ) ;
 int pgprot_val (int ) ;
 int pgprot_writecombine (int ) ;
 int qib_devinfo (int ,char*,unsigned int) ;
 scalar_t__ qib_wc_pat ;

__attribute__((used)) static int mmap_piobufs(struct vm_area_struct *vma,
   struct qib_devdata *dd,
   struct qib_ctxtdata *rcd,
   unsigned piobufs, unsigned piocnt)
{
 unsigned long phys;
 int ret;







 if ((vma->vm_end - vma->vm_start) > (piocnt * dd->palign)) {
  qib_devinfo(dd->pcidev,
   "FAIL mmap piobufs: reqlen %lx > PAGE\n",
    vma->vm_end - vma->vm_start);
  ret = -EINVAL;
  goto bail;
 }

 phys = dd->physaddr + piobufs;
 vma->vm_flags &= ~VM_MAYREAD;
 vma->vm_flags |= VM_DONTCOPY | VM_DONTEXPAND;

 if (qib_wc_pat)
  vma->vm_page_prot = pgprot_writecombine(vma->vm_page_prot);

 ret = io_remap_pfn_range(vma, vma->vm_start, phys >> PAGE_SHIFT,
     vma->vm_end - vma->vm_start,
     vma->vm_page_prot);
bail:
 return ret;
}
