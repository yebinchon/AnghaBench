
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENTER_CRITICAL (unsigned long) ;
 int EXIT_CRITICAL (unsigned long) ;
 int FLUSH_ITLB ;
 int PAGE_MASK ;
 int UNIQUE_ENTRYHI (int) ;
 int mtc0_tlbw_hazard () ;
 int read_c0_entryhi () ;
 int read_c0_index () ;
 int tlb_probe () ;
 int tlb_probe_hazard () ;
 int tlb_write_indexed () ;
 int tlbw_use_hazard () ;
 int write_c0_entryhi (int) ;
 int write_c0_entrylo0 (int ) ;
 int write_c0_entrylo1 (int ) ;

void local_flush_tlb_one(unsigned long page)
{
 unsigned long flags;
 int oldpid, idx;

 ENTER_CRITICAL(flags);
 oldpid = read_c0_entryhi();
 page &= (PAGE_MASK << 1);
 write_c0_entryhi(page);
 mtc0_tlbw_hazard();
 tlb_probe();
 tlb_probe_hazard();
 idx = read_c0_index();
 write_c0_entrylo0(0);
 write_c0_entrylo1(0);
 if (idx >= 0) {

  write_c0_entryhi(UNIQUE_ENTRYHI(idx));
  mtc0_tlbw_hazard();
  tlb_write_indexed();
  tlbw_use_hazard();
 }
 write_c0_entryhi(oldpid);
 FLUSH_ITLB;
 EXIT_CRITICAL(flags);
}
