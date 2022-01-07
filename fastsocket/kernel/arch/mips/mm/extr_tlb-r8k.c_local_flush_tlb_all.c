
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CKSEG0 ;
 int PAGE_SHIFT ;
 int TFP_TLB_SET_SHIFT ;
 int TFP_TLB_SIZE ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mtc0_tlbw_hazard () ;
 unsigned long read_c0_entryhi () ;
 int tlb_write () ;
 int tlbw_use_hazard () ;
 int write_c0_entryhi (unsigned long) ;
 int write_c0_entrylo (int ) ;
 int write_c0_tlbset (int) ;
 int write_c0_vaddr (int) ;

void local_flush_tlb_all(void)
{
 unsigned long flags;
 unsigned long old_ctx;
 int entry;

 local_irq_save(flags);

 old_ctx = read_c0_entryhi();
 write_c0_entrylo(0);

 for (entry = 0; entry < TFP_TLB_SIZE; entry++) {
  write_c0_tlbset(entry >> TFP_TLB_SET_SHIFT);
  write_c0_vaddr(entry << PAGE_SHIFT);
  write_c0_entryhi(CKSEG0 + (entry << (PAGE_SHIFT + 1)));
  mtc0_tlbw_hazard();
  tlb_write();
 }
 tlbw_use_hazard();
 write_c0_entryhi(old_ctx);
 local_irq_restore(flags);
}
