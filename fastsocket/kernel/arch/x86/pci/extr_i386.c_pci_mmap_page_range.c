
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int * vm_ops; int vm_page_prot; scalar_t__ vm_start; scalar_t__ vm_end; int vm_pgoff; } ;
struct pci_dev {int dummy; } ;
typedef enum pci_mmap_state { ____Placeholder_pci_mmap_state } pci_mmap_state ;
struct TYPE_2__ {int x86; } ;


 int EAGAIN ;
 int EINVAL ;
 unsigned long _PAGE_CACHE_UC_MINUS ;
 unsigned long _PAGE_CACHE_WC ;
 int __pgprot (unsigned long) ;
 TYPE_1__ boot_cpu_data ;
 scalar_t__ io_remap_pfn_range (struct vm_area_struct*,scalar_t__,int ,scalar_t__,int ) ;
 scalar_t__ pat_enabled ;
 int pci_mmap_io ;
 int pci_mmap_ops ;
 unsigned long pgprot_val (int ) ;

int pci_mmap_page_range(struct pci_dev *dev, struct vm_area_struct *vma,
   enum pci_mmap_state mmap_state, int write_combine)
{
 unsigned long prot;




 if (mmap_state == pci_mmap_io)
  return -EINVAL;

 prot = pgprot_val(vma->vm_page_prot);






 if (!pat_enabled && write_combine)
  return -EINVAL;

 if (pat_enabled && write_combine)
  prot |= _PAGE_CACHE_WC;
 else if (pat_enabled || boot_cpu_data.x86 > 3)





  prot |= _PAGE_CACHE_UC_MINUS;

 vma->vm_page_prot = __pgprot(prot);

 if (io_remap_pfn_range(vma, vma->vm_start, vma->vm_pgoff,
          vma->vm_end - vma->vm_start,
          vma->vm_page_prot))
  return -EAGAIN;

 vma->vm_ops = &pci_mmap_ops;

 return 0;
}
