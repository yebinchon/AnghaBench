
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 scalar_t__ __pa (unsigned long) ;
 int _set_memory_wb (unsigned long,int) ;
 int free_memtype (scalar_t__,scalar_t__) ;

int set_memory_wb(unsigned long addr, int numpages)
{
 int ret;

 ret = _set_memory_wb(addr, numpages);
 if (ret)
  return ret;

 free_memtype(__pa(addr), __pa(addr) + numpages * PAGE_SIZE);
 return 0;
}
