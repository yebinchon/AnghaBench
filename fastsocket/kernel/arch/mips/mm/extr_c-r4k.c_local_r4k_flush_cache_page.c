
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; struct mm_struct* vm_mm; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
struct flush_cache_page_args {unsigned long addr; int pfn; struct vm_area_struct* vma; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;


 int KM_USER0 ;
 unsigned long PAGE_MASK ;
 int Page_dcache_dirty (struct page*) ;
 int VM_EXEC ;
 int _PAGE_VALID ;
 scalar_t__ cpu_context (int,struct mm_struct*) ;
 scalar_t__ cpu_has_dc_aliases ;
 int cpu_has_ic_fills_f_dc ;
 scalar_t__ cpu_has_vtag_icache ;
 int cpu_icache_snoops_remote_store ;
 TYPE_1__* current ;
 int drop_mmu_context (struct mm_struct*,int) ;
 int has_valid_asid (struct mm_struct*) ;
 void* kmap_atomic (struct page*,int ) ;
 void* kmap_coherent (struct page*,unsigned long) ;
 int kunmap_atomic (void*,int ) ;
 int kunmap_coherent () ;
 scalar_t__ page_mapped (struct page*) ;
 struct page* pfn_to_page (int ) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int * pmd_offset (int *,unsigned long) ;
 int * pte_offset (int *,unsigned long) ;
 int pte_present (int ) ;
 int pte_val (int ) ;
 int * pud_offset (int *,unsigned long) ;
 int r4k_blast_dcache_page (unsigned long) ;
 int r4k_blast_icache_page (unsigned long) ;
 int r4k_blast_scache_page (unsigned long) ;
 int smp_processor_id () ;

__attribute__((used)) static inline void local_r4k_flush_cache_page(void *args)
{
 struct flush_cache_page_args *fcp_args = args;
 struct vm_area_struct *vma = fcp_args->vma;
 unsigned long addr = fcp_args->addr;
 struct page *page = pfn_to_page(fcp_args->pfn);
 int exec = vma->vm_flags & VM_EXEC;
 struct mm_struct *mm = vma->vm_mm;
 int map_coherent = 0;
 pgd_t *pgdp;
 pud_t *pudp;
 pmd_t *pmdp;
 pte_t *ptep;
 void *vaddr;





 if (!has_valid_asid(mm))
  return;

 addr &= PAGE_MASK;
 pgdp = pgd_offset(mm, addr);
 pudp = pud_offset(pgdp, addr);
 pmdp = pmd_offset(pudp, addr);
 ptep = pte_offset(pmdp, addr);





 if (!(pte_present(*ptep)))
  return;

 if ((mm == current->active_mm) && (pte_val(*ptep) & _PAGE_VALID))
  vaddr = ((void*)0);
 else {




  map_coherent = (cpu_has_dc_aliases &&
    page_mapped(page) && !Page_dcache_dirty(page));
  if (map_coherent)
   vaddr = kmap_coherent(page, addr);
  else
   vaddr = kmap_atomic(page, KM_USER0);
  addr = (unsigned long)vaddr;
 }

 if (cpu_has_dc_aliases || (exec && !cpu_has_ic_fills_f_dc)) {
  r4k_blast_dcache_page(addr);
  if (exec && !cpu_icache_snoops_remote_store)
   r4k_blast_scache_page(addr);
 }
 if (exec) {
  if (vaddr && cpu_has_vtag_icache && mm == current->active_mm) {
   int cpu = smp_processor_id();

   if (cpu_context(cpu, mm) != 0)
    drop_mmu_context(mm, cpu);
  } else
   r4k_blast_icache_page(addr);
 }

 if (vaddr) {
  if (map_coherent)
   kunmap_coherent();
  else
   kunmap_atomic(vaddr, KM_USER0);
 }
}
