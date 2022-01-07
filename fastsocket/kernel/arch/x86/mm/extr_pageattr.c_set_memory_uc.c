
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int _PAGE_CACHE_UC_MINUS ;
 scalar_t__ __pa (unsigned long) ;
 int _set_memory_uc (unsigned long,int) ;
 int free_memtype (scalar_t__,scalar_t__) ;
 int reserve_memtype (scalar_t__,scalar_t__,int ,int *) ;

int set_memory_uc(unsigned long addr, int numpages)
{
 int ret;




 ret = reserve_memtype(__pa(addr), __pa(addr) + numpages * PAGE_SIZE,
       _PAGE_CACHE_UC_MINUS, ((void*)0));
 if (ret)
  goto out_err;

 ret = _set_memory_uc(addr, numpages);
 if (ret)
  goto out_free;

 return 0;

out_free:
 free_memtype(__pa(addr), __pa(addr) + numpages * PAGE_SIZE);
out_err:
 return ret;
}
