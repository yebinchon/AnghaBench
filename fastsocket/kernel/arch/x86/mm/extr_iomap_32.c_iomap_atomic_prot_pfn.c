
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgprot_t ;
typedef enum km_type { ____Placeholder_km_type } km_type ;


 int PAGE_KERNEL_UC_MINUS ;
 int PAGE_KERNEL_WC ;
 void* kmap_atomic_prot_pfn (unsigned long,int,int ) ;
 int pat_enabled ;
 scalar_t__ pgprot_val (int ) ;

void *
iomap_atomic_prot_pfn(unsigned long pfn, enum km_type type, pgprot_t prot)
{






 if (!pat_enabled && pgprot_val(prot) == pgprot_val(PAGE_KERNEL_WC))
  prot = PAGE_KERNEL_UC_MINUS;

 return kmap_atomic_prot_pfn(pfn, type, prot);
}
