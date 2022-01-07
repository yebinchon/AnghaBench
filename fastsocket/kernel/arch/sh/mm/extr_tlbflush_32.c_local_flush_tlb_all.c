
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MMUCR ;
 int ctrl_barrier () ;
 unsigned long ctrl_inl (int ) ;
 int ctrl_outl (unsigned long,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void local_flush_tlb_all(void)
{
 unsigned long flags, status;
 local_irq_save(flags);
 status = ctrl_inl(MMUCR);
 status |= 0x04;
 ctrl_outl(status, MMUCR);
 ctrl_barrier();
 local_irq_restore(flags);
}
