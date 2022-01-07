
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; int vm_flags; int vm_page_prot; } ;
struct qib_devdata {int flags; unsigned long physaddr; int pcidev; } ;


 int EFAULT ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int QIB_HAS_HDRSUPP ;
 int VM_DONTCOPY ;
 int VM_DONTEXPAND ;
 int io_remap_pfn_range (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int ) ;
 int pgprot_noncached (int ) ;
 int qib_devinfo (int ,char*,unsigned long) ;

__attribute__((used)) static int mmap_ureg(struct vm_area_struct *vma, struct qib_devdata *dd,
       u64 ureg)
{
 unsigned long phys;
 unsigned long sz;
 int ret;






 sz = dd->flags & QIB_HAS_HDRSUPP ? 2 * PAGE_SIZE : PAGE_SIZE;
 if ((vma->vm_end - vma->vm_start) > sz) {
  qib_devinfo(dd->pcidev,
   "FAIL mmap userreg: reqlen %lx > PAGE\n",
   vma->vm_end - vma->vm_start);
  ret = -EFAULT;
 } else {
  phys = dd->physaddr + ureg;
  vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);

  vma->vm_flags |= VM_DONTCOPY | VM_DONTEXPAND;
  ret = io_remap_pfn_range(vma, vma->vm_start,
      phys >> PAGE_SHIFT,
      vma->vm_end - vma->vm_start,
      vma->vm_page_prot);
 }
 return ret;
}
