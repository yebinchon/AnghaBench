
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int pmd_t ;
typedef int pgd_t ;
struct TYPE_7__ {scalar_t__ kvm_seq; } ;
struct TYPE_11__ {TYPE_1__ context; } ;
struct TYPE_10__ {TYPE_6__* active_mm; } ;
struct TYPE_8__ {scalar_t__ kvm_seq; } ;
struct TYPE_9__ {TYPE_2__ context; } ;


 scalar_t__ PGDIR_SIZE ;
 int PMD_TYPE_MASK ;
 int PMD_TYPE_TABLE ;
 int SZ_1M ;
 int __check_kvm_seq (TYPE_6__*) ;
 TYPE_5__* current ;
 int flush_cache_vunmap (unsigned long,unsigned long) ;
 int flush_tlb_kernel_range (unsigned long,unsigned long) ;
 TYPE_3__ init_mm ;
 int * pgd_offset_k (unsigned long) ;
 int pmd_clear (int *) ;
 int pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_page_vaddr (int ) ;
 int pmd_val (int ) ;
 int pte_free_kernel (TYPE_3__*,int ) ;

__attribute__((used)) static void unmap_area_sections(unsigned long virt, unsigned long size)
{
 unsigned long addr = virt, end = virt + (size & ~(SZ_1M - 1));
 pgd_t *pgd;

 flush_cache_vunmap(addr, end);
 pgd = pgd_offset_k(addr);
 do {
  pmd_t pmd, *pmdp = pmd_offset(pgd, addr);

  pmd = *pmdp;
  if (!pmd_none(pmd)) {







   pmd_clear(pmdp);
   init_mm.context.kvm_seq++;




   if ((pmd_val(pmd) & PMD_TYPE_MASK) == PMD_TYPE_TABLE)
    pte_free_kernel(&init_mm, pmd_page_vaddr(pmd));
  }

  addr += PGDIR_SIZE;
  pgd++;
 } while (addr < end);





 if (current->active_mm->context.kvm_seq != init_mm.context.kvm_seq)
  __check_kvm_seq(current->active_mm);

 flush_tlb_kernel_range(virt, end);
}
