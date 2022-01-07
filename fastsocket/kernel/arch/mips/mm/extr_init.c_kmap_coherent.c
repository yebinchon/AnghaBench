
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_5__ {unsigned long pte_high; } ;
typedef TYPE_1__ pte_t ;
typedef enum fixed_addresses { ____Placeholder_fixed_addresses } fixed_addresses ;


 int BUG_ON (int ) ;
 int ENTER_CRITICAL (unsigned long) ;
 int EXIT_CRITICAL (unsigned long) ;
 int FIX_CMAP_END ;
 int FIX_N_COLOURS ;
 int NR_CPUS ;
 int PAGE_KERNEL ;
 int PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 int Page_dcache_dirty (struct page*) ;
 unsigned long __fix_to_virt (int) ;
 scalar_t__ in_interrupt () ;
 int inc_preempt_count () ;
 int kmap_coherent_pte ;
 TYPE_1__ mk_pte (struct page*,int ) ;
 int mtc0_tlbw_hazard () ;
 int pte_val (TYPE_1__) ;
 unsigned long read_c0_entryhi () ;
 int read_c0_index () ;
 int read_c0_wired () ;
 int set_pte (int,TYPE_1__) ;
 int smp_processor_id () ;
 int tlb_probe () ;
 int tlb_probe_hazard () ;
 int tlb_write_indexed () ;
 int tlb_write_random () ;
 int tlbw_use_hazard () ;
 int write_c0_entryhi (unsigned long) ;
 int write_c0_entrylo0 (unsigned long) ;
 int write_c0_entrylo1 (unsigned long) ;
 int write_c0_index (int) ;
 int write_c0_wired (int) ;

void *kmap_coherent(struct page *page, unsigned long addr)
{
 enum fixed_addresses idx;
 unsigned long vaddr, flags, entrylo;
 unsigned long old_ctx;
 pte_t pte;
 int tlbidx;

 BUG_ON(Page_dcache_dirty(page));

 inc_preempt_count();
 idx = (addr >> PAGE_SHIFT) & (FIX_N_COLOURS - 1);




 idx += in_interrupt() ? FIX_N_COLOURS : 0;

 vaddr = __fix_to_virt(FIX_CMAP_END - idx);
 pte = mk_pte(page, PAGE_KERNEL);



 entrylo = pte_val(pte) >> 6;


 ENTER_CRITICAL(flags);
 old_ctx = read_c0_entryhi();
 write_c0_entryhi(vaddr & (PAGE_MASK << 1));
 write_c0_entrylo0(entrylo);
 write_c0_entrylo1(entrylo);
 tlbidx = read_c0_wired();
 write_c0_wired(tlbidx + 1);
 write_c0_index(tlbidx);
 mtc0_tlbw_hazard();
 tlb_write_indexed();

 tlbw_use_hazard();
 write_c0_entryhi(old_ctx);
 EXIT_CRITICAL(flags);

 return (void*) vaddr;
}
