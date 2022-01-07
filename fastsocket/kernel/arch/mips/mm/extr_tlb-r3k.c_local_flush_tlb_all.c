
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tlbsize; } ;


 unsigned long ASID_MASK ;
 int BARRIER ;
 TYPE_1__ current_cpu_data ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int printk (char*) ;
 scalar_t__ r3k_have_wired_reg ;
 unsigned long read_c0_entryhi () ;
 int read_c0_wired () ;
 int tlb_write_indexed () ;
 int write_c0_entryhi (unsigned long) ;
 int write_c0_entrylo0 (int ) ;
 int write_c0_index (int) ;

void local_flush_tlb_all(void)
{
 unsigned long flags;
 unsigned long old_ctx;
 int entry;





 local_irq_save(flags);
 old_ctx = read_c0_entryhi() & ASID_MASK;
 write_c0_entrylo0(0);
 entry = r3k_have_wired_reg ? read_c0_wired() : 8;
 for (; entry < current_cpu_data.tlbsize; entry++) {
  write_c0_index(entry << 8);
  write_c0_entryhi((entry | 0x80000) << 12);
  BARRIER;
  tlb_write_indexed();
 }
 write_c0_entryhi(old_ctx);
 local_irq_restore(flags);
}
