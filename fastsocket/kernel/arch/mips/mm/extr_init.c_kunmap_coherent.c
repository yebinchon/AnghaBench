
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENTER_CRITICAL (unsigned long) ;
 int EXIT_CRITICAL (unsigned long) ;
 unsigned long UNIQUE_ENTRYHI (unsigned int) ;
 int dec_preempt_count () ;
 int mtc0_tlbw_hazard () ;
 int preempt_check_resched () ;
 unsigned long read_c0_entryhi () ;
 unsigned int read_c0_wired () ;
 int tlb_write_indexed () ;
 int tlbw_use_hazard () ;
 int write_c0_entryhi (unsigned long) ;
 int write_c0_entrylo0 (int ) ;
 int write_c0_entrylo1 (int ) ;
 int write_c0_index (unsigned int) ;
 int write_c0_wired (unsigned int) ;

void kunmap_coherent(void)
{

 unsigned int wired;
 unsigned long flags, old_ctx;

 ENTER_CRITICAL(flags);
 old_ctx = read_c0_entryhi();
 wired = read_c0_wired() - 1;
 write_c0_wired(wired);
 write_c0_index(wired);
 write_c0_entryhi(UNIQUE_ENTRYHI(wired));
 write_c0_entrylo0(0);
 write_c0_entrylo1(0);
 mtc0_tlbw_hazard();
 tlb_write_indexed();
 tlbw_use_hazard();
 write_c0_entryhi(old_ctx);
 EXIT_CRITICAL(flags);

 dec_preempt_count();
 preempt_check_resched();
}
