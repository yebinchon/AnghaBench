
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PDC_BROADCAST_RESET ;
 int PDC_DO_FIRM_TEST_RESET ;
 int PDC_FIRM_TEST_MAGIC ;
 int mem_pdc_call (int ,int ,int ,unsigned long) ;
 int pdc_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pdc_do_firm_test_reset(unsigned long ftc_bitmap)
{
        int retval;
 unsigned long flags;

        spin_lock_irqsave(&pdc_lock, flags);
        retval = mem_pdc_call(PDC_BROADCAST_RESET, PDC_DO_FIRM_TEST_RESET,
                              PDC_FIRM_TEST_MAGIC, ftc_bitmap);
        spin_unlock_irqrestore(&pdc_lock, flags);

        return retval;
}
