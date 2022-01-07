
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u64 ;
struct vm_area_struct {scalar_t__ vm_end; scalar_t__ vm_start; int vm_flags; int vm_page_prot; } ;
struct ipath_devdata {unsigned long ipath_physaddr; TYPE_1__* pcidev; } ;
struct TYPE_2__ {int dev; } ;


 int EFAULT ;
 unsigned long PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int VM_DONTCOPY ;
 int VM_DONTEXPAND ;
 int dev_info (int *,char*,scalar_t__) ;
 int io_remap_pfn_range (struct vm_area_struct*,scalar_t__,unsigned long,scalar_t__,int ) ;
 int pgprot_noncached (int ) ;

__attribute__((used)) static int mmap_ureg(struct vm_area_struct *vma, struct ipath_devdata *dd,
       u64 ureg)
{
 unsigned long phys;
 int ret;






 if ((vma->vm_end - vma->vm_start) > PAGE_SIZE) {
  dev_info(&dd->pcidev->dev, "FAIL mmap userreg: reqlen "
    "%lx > PAGE\n", vma->vm_end - vma->vm_start);
  ret = -EFAULT;
 } else {
  phys = dd->ipath_physaddr + ureg;
  vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);

  vma->vm_flags |= VM_DONTCOPY | VM_DONTEXPAND;
  ret = io_remap_pfn_range(vma, vma->vm_start,
      phys >> PAGE_SHIFT,
      vma->vm_end - vma->vm_start,
      vma->vm_page_prot);
 }
 return ret;
}
