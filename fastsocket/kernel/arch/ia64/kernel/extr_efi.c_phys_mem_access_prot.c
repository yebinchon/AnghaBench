
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct file {int dummy; } ;
typedef int pgprot_t ;


 int EFI_MEMORY_UC ;
 int EFI_MEMORY_WB ;
 unsigned long PAGE_SHIFT ;
 int efi_mem_attribute (unsigned long,unsigned long) ;
 int kern_mem_attribute (unsigned long,unsigned long) ;
 int pgprot_cacheable (int ) ;
 int pgprot_noncached (int ) ;

pgprot_t
phys_mem_access_prot(struct file *file, unsigned long pfn, unsigned long size,
       pgprot_t vma_prot)
{
 unsigned long phys_addr = pfn << PAGE_SHIFT;
 u64 attr;






 attr = kern_mem_attribute(phys_addr, size);
 if (attr & EFI_MEMORY_WB)
  return pgprot_cacheable(vma_prot);
 else if (attr & EFI_MEMORY_UC)
  return pgprot_noncached(vma_prot);





 if (efi_mem_attribute(phys_addr, size) & EFI_MEMORY_WB)
  return pgprot_cacheable(vma_prot);

 return pgprot_noncached(vma_prot);
}
