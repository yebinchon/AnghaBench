
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pdc_lock ;
 int real32_call (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pdc_sti_call(unsigned long func, unsigned long flags,
                 unsigned long inptr, unsigned long outputr,
                 unsigned long glob_cfg)
{
        int retval;
 unsigned long irqflags;

        spin_lock_irqsave(&pdc_lock, irqflags);
        retval = real32_call(func, flags, inptr, outputr, glob_cfg);
        spin_unlock_irqrestore(&pdc_lock, irqflags);

        return retval;
}
