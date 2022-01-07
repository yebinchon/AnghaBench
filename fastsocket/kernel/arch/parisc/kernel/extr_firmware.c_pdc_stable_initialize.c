
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PDC_STABLE ;
 int PDC_STABLE_INITIALIZE ;
 int mem_pdc_call (int ,int ) ;
 int pdc_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pdc_stable_initialize(void)
{
       int retval;
 unsigned long flags;

       spin_lock_irqsave(&pdc_lock, flags);
       retval = mem_pdc_call(PDC_STABLE, PDC_STABLE_INITIALIZE);
       spin_unlock_irqrestore(&pdc_lock, flags);

       return retval;
}
