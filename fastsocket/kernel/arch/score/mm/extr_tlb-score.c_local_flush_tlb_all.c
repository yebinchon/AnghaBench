
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ASID_MASK ;
 unsigned long KSEG1 ;
 int TLBSIZE ;
 int barrier () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int pectx_set (int ) ;
 unsigned long pevn_get () ;
 int pevn_set (unsigned long) ;
 int tlb_write_indexed () ;
 int tlblock_get () ;
 int tlbpt_set (int) ;

void local_flush_tlb_all(void)
{
 unsigned long flags;
 unsigned long old_ASID;
 int entry;

 local_irq_save(flags);
 old_ASID = pevn_get() & ASID_MASK;
 pectx_set(0);
 entry = tlblock_get();

 for (; entry < TLBSIZE; entry++) {
  tlbpt_set(entry);
  pevn_set(KSEG1);
  barrier();
  tlb_write_indexed();
 }
 pevn_set(old_ASID);
 local_irq_restore(flags);
}
