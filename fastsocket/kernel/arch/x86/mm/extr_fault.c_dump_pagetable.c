
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int PHYSICAL_PAGE_MASK ;
 int * __va (int) ;
 scalar_t__ bad_address (int *) ;
 int pgd_index (unsigned long) ;
 int pgd_present (int ) ;
 int pgd_val (int ) ;
 scalar_t__ pmd_large (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_present (int ) ;
 int pmd_val (int ) ;
 int printk (char*,...) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 int pte_val (int ) ;
 scalar_t__ pud_large (int ) ;
 int * pud_offset (int *,unsigned long) ;
 int pud_present (int ) ;
 int pud_val (int ) ;
 int read_cr3 () ;

__attribute__((used)) static void dump_pagetable(unsigned long address)
{
 pgd_t *base = __va(read_cr3() & PHYSICAL_PAGE_MASK);
 pgd_t *pgd = base + pgd_index(address);
 pud_t *pud;
 pmd_t *pmd;
 pte_t *pte;

 if (bad_address(pgd))
  goto bad;

 printk("PGD %lx ", pgd_val(*pgd));

 if (!pgd_present(*pgd))
  goto out;

 pud = pud_offset(pgd, address);
 if (bad_address(pud))
  goto bad;

 printk("PUD %lx ", pud_val(*pud));
 if (!pud_present(*pud) || pud_large(*pud))
  goto out;

 pmd = pmd_offset(pud, address);
 if (bad_address(pmd))
  goto bad;

 printk("PMD %lx ", pmd_val(*pmd));
 if (!pmd_present(*pmd) || pmd_large(*pmd))
  goto out;

 pte = pte_offset_kernel(pmd, address);
 if (bad_address(pte))
  goto bad;

 printk("PTE %lx", pte_val(*pte));
out:
 printk("\n");
 return;
bad:
 printk("BAD\n");
}
