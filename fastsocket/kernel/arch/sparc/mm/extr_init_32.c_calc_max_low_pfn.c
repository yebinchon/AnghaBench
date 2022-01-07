
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long base_addr; unsigned long num_bytes; } ;


 unsigned long PAGE_SHIFT ;
 unsigned long SRMMU_MAXMEM ;
 unsigned long pfn_base ;
 TYPE_1__* sp_banks ;

__attribute__((used)) static unsigned long calc_max_low_pfn(void)
{
 int i;
 unsigned long tmp = pfn_base + (SRMMU_MAXMEM >> PAGE_SHIFT);
 unsigned long curr_pfn, last_pfn;

 last_pfn = (sp_banks[0].base_addr + sp_banks[0].num_bytes) >> PAGE_SHIFT;
 for (i = 1; sp_banks[i].num_bytes != 0; i++) {
  curr_pfn = sp_banks[i].base_addr >> PAGE_SHIFT;

  if (curr_pfn >= tmp) {
   if (last_pfn < tmp)
    tmp = last_pfn;
   break;
  }

  last_pfn = (sp_banks[i].base_addr + sp_banks[i].num_bytes) >> PAGE_SHIFT;
 }

 return tmp;
}
