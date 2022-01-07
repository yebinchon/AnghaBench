
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned int vm_end; unsigned int vm_start; int vm_flags; int vm_page_prot; } ;
struct ipath_portdata {int dummy; } ;
struct ipath_devdata {unsigned int ipath_palign; unsigned int ipath_physaddr; TYPE_1__* pcidev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 unsigned long PAGE_SHIFT ;
 int VM_DONTCOPY ;
 int VM_DONTEXPAND ;
 int VM_MAYREAD ;
 int _PAGE_GUARDED ;
 int _PAGE_NO_CACHE ;
 int _PAGE_WRITETHRU ;
 int dev_info (int *,char*,unsigned int) ;
 int io_remap_pfn_range (struct vm_area_struct*,unsigned int,unsigned long,unsigned int,int ) ;
 int pgprot_val (int ) ;

__attribute__((used)) static int mmap_piobufs(struct vm_area_struct *vma,
   struct ipath_devdata *dd,
   struct ipath_portdata *pd,
   unsigned piobufs, unsigned piocnt)
{
 unsigned long phys;
 int ret;







 if ((vma->vm_end - vma->vm_start) > (piocnt * dd->ipath_palign)) {
  dev_info(&dd->pcidev->dev, "FAIL mmap piobufs: "
    "reqlen %lx > PAGE\n",
    vma->vm_end - vma->vm_start);
  ret = -EINVAL;
  goto bail;
 }

 phys = dd->ipath_physaddr + piobufs;
 vma->vm_flags &= ~VM_MAYREAD;
 vma->vm_flags |= VM_DONTCOPY | VM_DONTEXPAND;

 ret = io_remap_pfn_range(vma, vma->vm_start, phys >> PAGE_SHIFT,
     vma->vm_end - vma->vm_start,
     vma->vm_page_prot);
bail:
 return ret;
}
