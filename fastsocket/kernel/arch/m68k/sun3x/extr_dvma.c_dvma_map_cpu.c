
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int ENOMEM ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 int PAGE_KERNEL ;
 unsigned long PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 unsigned long PGDIR_MASK ;
 int PGDIR_SIZE ;
 unsigned long PMD_MASK ;
 int PMD_SIZE ;
 unsigned long __pa (unsigned long) ;
 int flush_tlb_all () ;
 int init_mm ;
 int pfn_pte (int ,int ) ;
 int * pgd_offset_k (unsigned long) ;
 int * pmd_alloc (int *,int *,unsigned long) ;
 int printk (char*,unsigned long,unsigned long) ;
 int * pte_alloc_kernel (int *,unsigned long) ;
 int set_pte (int *,int ) ;
 int virt_to_pfn (unsigned long) ;

inline int dvma_map_cpu(unsigned long kaddr,
          unsigned long vaddr, int len)
{
 pgd_t *pgd;
 unsigned long end;
 int ret = 0;

 kaddr &= PAGE_MASK;
 vaddr &= PAGE_MASK;

 end = PAGE_ALIGN(vaddr + len);





 pgd = pgd_offset_k(vaddr);

 do {
  pmd_t *pmd;
  unsigned long end2;

  if((pmd = pmd_alloc(&init_mm, pgd, vaddr)) == ((void*)0)) {
   ret = -ENOMEM;
   goto out;
  }

  if((end & PGDIR_MASK) > (vaddr & PGDIR_MASK))
   end2 = (vaddr + (PGDIR_SIZE-1)) & PGDIR_MASK;
  else
   end2 = end;

  do {
   pte_t *pte;
   unsigned long end3;

   if((pte = pte_alloc_kernel(pmd, vaddr)) == ((void*)0)) {
    ret = -ENOMEM;
    goto out;
   }

   if((end2 & PMD_MASK) > (vaddr & PMD_MASK))
    end3 = (vaddr + (PMD_SIZE-1)) & PMD_MASK;
   else
    end3 = end2;

   do {




    set_pte(pte, pfn_pte(virt_to_pfn(kaddr),
           PAGE_KERNEL));
    pte++;
    kaddr += PAGE_SIZE;
    vaddr += PAGE_SIZE;
   } while(vaddr < end3);

  } while(vaddr < end2);

 } while(vaddr < end);

 flush_tlb_all();

 out:
 return ret;
}
