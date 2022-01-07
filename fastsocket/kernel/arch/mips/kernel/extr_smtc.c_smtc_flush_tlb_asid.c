
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tlbsize; } ;


 unsigned long ASID_MASK ;
 scalar_t__ CKSEG0 ;
 int PAGE_SHIFT ;
 int PARKED_INDEX ;
 TYPE_1__ current_cpu_data ;
 int ehb () ;
 int mtc0_tlbw_hazard () ;
 unsigned long read_c0_entryhi () ;
 int read_c0_wired () ;
 int tlb_read () ;
 int tlb_write_indexed () ;
 int tlbw_use_hazard () ;
 int write_c0_entryhi (scalar_t__) ;
 int write_c0_entrylo0 (int ) ;
 int write_c0_entrylo1 (int ) ;
 int write_c0_index (int) ;

void smtc_flush_tlb_asid(unsigned long asid)
{
 int entry;
 unsigned long ehi;

 entry = read_c0_wired();


 while (entry < current_cpu_data.tlbsize) {
  write_c0_index(entry);
  ehb();
  tlb_read();
  ehb();
  ehi = read_c0_entryhi();
  if ((ehi & ASID_MASK) == asid) {




      write_c0_entryhi(CKSEG0 + (entry << (PAGE_SHIFT + 1)));
      write_c0_entrylo0(0);
      write_c0_entrylo1(0);
      mtc0_tlbw_hazard();
      tlb_write_indexed();
  }
  entry++;
 }
 write_c0_index(PARKED_INDEX);
 tlbw_use_hazard();
}
