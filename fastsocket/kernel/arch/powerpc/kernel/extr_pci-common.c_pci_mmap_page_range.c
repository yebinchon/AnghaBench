
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_pgoff; int vm_page_prot; scalar_t__ vm_start; scalar_t__ vm_end; } ;
struct resource {int dummy; } ;
struct pci_dev {int dummy; } ;
typedef int resource_size_t ;
typedef enum pci_mmap_state { ____Placeholder_pci_mmap_state } pci_mmap_state ;


 int EINVAL ;
 int PAGE_SHIFT ;
 struct resource* __pci_mmap_make_offset (struct pci_dev*,int*,int) ;
 int __pci_mmap_set_pgprot (struct pci_dev*,struct resource*,int ,int,int) ;
 int remap_pfn_range (struct vm_area_struct*,scalar_t__,int,scalar_t__,int ) ;

int pci_mmap_page_range(struct pci_dev *dev, struct vm_area_struct *vma,
   enum pci_mmap_state mmap_state, int write_combine)
{
 resource_size_t offset =
  ((resource_size_t)vma->vm_pgoff) << PAGE_SHIFT;
 struct resource *rp;
 int ret;

 rp = __pci_mmap_make_offset(dev, &offset, mmap_state);
 if (rp == ((void*)0))
  return -EINVAL;

 vma->vm_pgoff = offset >> PAGE_SHIFT;
 vma->vm_page_prot = __pci_mmap_set_pgprot(dev, rp,
        vma->vm_page_prot,
        mmap_state, write_combine);

 ret = remap_pfn_range(vma, vma->vm_start, vma->vm_pgoff,
          vma->vm_end - vma->vm_start, vma->vm_page_prot);

 return ret;
}
