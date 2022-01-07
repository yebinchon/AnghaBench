
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KSEG1 ;
 int PAGE_MASK ;
 int barrier () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int pectx_set (int ) ;
 int pevn_get () ;
 int pevn_set (int) ;
 int tlb_probe () ;
 int tlb_write_indexed () ;
 int tlbpt_get () ;

void local_flush_tlb_one(unsigned long page)
{
 unsigned long flags;
 int oldpid, idx;

 local_irq_save(flags);
 oldpid = pevn_get();
 page &= (PAGE_MASK << 1);
 pevn_set(page);
 barrier();
 tlb_probe();
 idx = tlbpt_get();
 pectx_set(0);
 if (idx >= 0) {

  pevn_set(KSEG1);
  barrier();
  tlb_write_indexed();
 }
 pevn_set(oldpid);
 local_irq_restore(flags);
}
