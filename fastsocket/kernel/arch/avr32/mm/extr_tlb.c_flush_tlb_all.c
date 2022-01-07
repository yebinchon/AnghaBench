
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MMUCR ;
 int MMUCR_I ;
 int SYSREG_BIT (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int sysreg_read (int ) ;
 int sysreg_write (int ,int) ;

void flush_tlb_all(void)
{
 unsigned long flags;

 local_irq_save(flags);
 sysreg_write(MMUCR, sysreg_read(MMUCR) | SYSREG_BIT(MMUCR_I));
 local_irq_restore(flags);
}
