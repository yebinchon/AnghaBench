
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long __pa (int ) ;
 int high_memory ;

__attribute__((used)) static inline int valid_phys_addr_range(unsigned long addr, size_t count)
{
 if (addr + count > __pa(high_memory))
  return 0;

 return 1;
}
