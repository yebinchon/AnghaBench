
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; int vm_page_prot; scalar_t__ vm_start; scalar_t__ vm_end; int vm_pgoff; } ;
struct pci_dev {int dummy; } ;
typedef enum pci_mmap_state { ____Placeholder_pci_mmap_state } pci_mmap_state ;


 int EAGAIN ;
 int VM_IO ;
 int VM_LOCKED ;
 unsigned long _PAGE_CACHE ;
 int __pgprot (unsigned long) ;
 scalar_t__ io_remap_pfn_range (struct vm_area_struct*,scalar_t__,int ,scalar_t__,int ) ;
 unsigned long pgprot_val (int ) ;

int pci_mmap_page_range(struct pci_dev *dev, struct vm_area_struct *vma,
   enum pci_mmap_state mmap_state, int write_combine)
{
 unsigned long prot;




 vma->vm_flags |= VM_LOCKED | VM_IO;

 prot = pgprot_val(vma->vm_page_prot);
 prot &= ~_PAGE_CACHE;
 vma->vm_page_prot = __pgprot(prot);


 if (io_remap_pfn_range(vma, vma->vm_start, vma->vm_pgoff,
          vma->vm_end - vma->vm_start,
          vma->vm_page_prot))
  return -EAGAIN;

 return 0;
}
