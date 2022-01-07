
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdc_system_map_addr_info {int mod_addr; } ;


 int PDC_FIND_ADDRESS ;
 int PDC_SYSTEM_MAP ;
 int __pa (int ) ;
 int convert_to_wide (int ) ;
 int f_extend (int ) ;
 int mem_pdc_call (int ,int ,int ,long,long) ;
 int memcpy (struct pdc_system_map_addr_info*,int ,int) ;
 int pdc_lock ;
 int pdc_result ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pdc_system_map_find_addrs(struct pdc_system_map_addr_info *pdc_addr_info,
         long mod_index, long addr_index)
{
 int retval;
 unsigned long flags;

 spin_lock_irqsave(&pdc_lock, flags);
 retval = mem_pdc_call(PDC_SYSTEM_MAP, PDC_FIND_ADDRESS, __pa(pdc_result),
         mod_index, addr_index);
 convert_to_wide(pdc_result);
 memcpy(pdc_addr_info, pdc_result, sizeof(*pdc_addr_info));
 spin_unlock_irqrestore(&pdc_lock, flags);

 pdc_addr_info->mod_addr = f_extend(pdc_addr_info->mod_addr);
 return retval;
}
