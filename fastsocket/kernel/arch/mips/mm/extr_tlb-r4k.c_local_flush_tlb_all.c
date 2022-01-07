
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tlbsize; } ;


 int ENTER_CRITICAL (unsigned long) ;
 int EXIT_CRITICAL (unsigned long) ;
 int FLUSH_ITLB ;
 unsigned long UNIQUE_ENTRYHI (int) ;
 TYPE_1__ current_cpu_data ;
 int mtc0_tlbw_hazard () ;
 unsigned long read_c0_entryhi () ;
 int read_c0_wired () ;
 int tlb_write_indexed () ;
 int tlbw_use_hazard () ;
 int write_c0_entryhi (unsigned long) ;
 int write_c0_entrylo0 (int ) ;
 int write_c0_entrylo1 (int ) ;
 int write_c0_index (int) ;

void local_flush_tlb_all(void)
{
 unsigned long flags;
 unsigned long old_ctx;
 int entry;

 ENTER_CRITICAL(flags);

 old_ctx = read_c0_entryhi();
 write_c0_entrylo0(0);
 write_c0_entrylo1(0);

 entry = read_c0_wired();


 while (entry < current_cpu_data.tlbsize) {

  write_c0_entryhi(UNIQUE_ENTRYHI(entry));
  write_c0_index(entry);
  mtc0_tlbw_hazard();
  tlb_write_indexed();
  entry++;
 }
 tlbw_use_hazard();
 write_c0_entryhi(old_ctx);
 FLUSH_ITLB;
 EXIT_CRITICAL(flags);
}
