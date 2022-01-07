
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;


 unsigned long PAGE_MASK ;
 int VM_EXEC ;
 int _PAGE_PRESENT ;
 int _PAGE_VALID ;
 scalar_t__ cpu_context (int ,struct mm_struct*) ;
 scalar_t__ cpu_has_dc_aliases ;
 TYPE_1__* current ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int * pmd_offset (int *,unsigned long) ;
 int * pte_offset (int *,unsigned long) ;
 int pte_val (int ) ;
 int * pud_offset (int *,unsigned long) ;
 int smp_processor_id () ;
 int tx39_blast_dcache_page (unsigned long) ;
 int tx39_blast_dcache_page_indexed (unsigned long) ;
 int tx39_blast_icache_page (unsigned long) ;
 int tx39_blast_icache_page_indexed (unsigned long) ;

__attribute__((used)) static void tx39_flush_cache_page(struct vm_area_struct *vma, unsigned long page, unsigned long pfn)
{
 int exec = vma->vm_flags & VM_EXEC;
 struct mm_struct *mm = vma->vm_mm;
 pgd_t *pgdp;
 pud_t *pudp;
 pmd_t *pmdp;
 pte_t *ptep;





 if (cpu_context(smp_processor_id(), mm) == 0)
  return;

 page &= PAGE_MASK;
 pgdp = pgd_offset(mm, page);
 pudp = pud_offset(pgdp, page);
 pmdp = pmd_offset(pudp, page);
 ptep = pte_offset(pmdp, page);





 if (!(pte_val(*ptep) & _PAGE_PRESENT))
  return;







 if ((mm == current->active_mm) && (pte_val(*ptep) & _PAGE_VALID)) {
  if (cpu_has_dc_aliases || exec)
   tx39_blast_dcache_page(page);
  if (exec)
   tx39_blast_icache_page(page);

  return;
 }





 if (cpu_has_dc_aliases || exec)
  tx39_blast_dcache_page_indexed(page);
 if (exec)
  tx39_blast_icache_page_indexed(page);
}
