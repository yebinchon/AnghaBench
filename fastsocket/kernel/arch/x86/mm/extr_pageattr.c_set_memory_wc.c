
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int _PAGE_CACHE_WC ;
 scalar_t__ __pa (unsigned long) ;
 int _set_memory_wc (unsigned long,int) ;
 int free_memtype (scalar_t__,scalar_t__) ;
 int pat_enabled ;
 int reserve_memtype (scalar_t__,scalar_t__,int ,int *) ;
 int set_memory_uc (unsigned long,int) ;

int set_memory_wc(unsigned long addr, int numpages)
{
 int ret;

 if (!pat_enabled)
  return set_memory_uc(addr, numpages);

 ret = reserve_memtype(__pa(addr), __pa(addr) + numpages * PAGE_SIZE,
  _PAGE_CACHE_WC, ((void*)0));
 if (ret)
  goto out_err;

 ret = _set_memory_wc(addr, numpages);
 if (ret)
  goto out_free;

 return 0;

out_free:
 free_memtype(__pa(addr), __pa(addr) + numpages * PAGE_SIZE);
out_err:
 return ret;
}
