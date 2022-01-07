
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ check_of_version () ;
 int chosen_mmu ;
 int memory ;
 scalar_t__ need_map ;
 int of_call_prom (char*,int,int,...) ;
 int of_call_prom_ret (char*,int,int,unsigned int*,char*,int ,unsigned long,unsigned long,unsigned long) ;

void *of_claim(unsigned long virt, unsigned long size, unsigned long align)
{
 int ret;
 unsigned int result;

 if (need_map < 0)
  need_map = check_of_version();
 if (align || !need_map)
  return (void *) of_call_prom("claim", 3, 1, virt, size, align);

 ret = of_call_prom_ret("call-method", 5, 2, &result, "claim", memory,
          align, size, virt);
 if (ret != 0 || result == -1)
  return (void *) -1;
 ret = of_call_prom_ret("call-method", 5, 2, &result, "claim", chosen_mmu,
          align, size, virt);

 ret = of_call_prom("call-method", 6, 1, "map", chosen_mmu,
      0x12, size, virt, virt);
 return (void *) virt;
}
