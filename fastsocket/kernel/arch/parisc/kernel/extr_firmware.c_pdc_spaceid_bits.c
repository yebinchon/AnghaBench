
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PDC_CACHE ;
 int PDC_CACHE_RET_SPID ;
 int __pa (unsigned long*) ;
 int convert_to_wide (unsigned long*) ;
 int mem_pdc_call (int ,int ,int ,int ) ;
 int pdc_lock ;
 unsigned long* pdc_result ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pdc_spaceid_bits(unsigned long *space_bits)
{
 int retval;
 unsigned long flags;

 spin_lock_irqsave(&pdc_lock, flags);
 pdc_result[0] = 0;
 retval = mem_pdc_call(PDC_CACHE, PDC_CACHE_RET_SPID, __pa(pdc_result), 0);
 convert_to_wide(pdc_result);
 *space_bits = pdc_result[0];
 spin_unlock_irqrestore(&pdc_lock, flags);

 return retval;
}
