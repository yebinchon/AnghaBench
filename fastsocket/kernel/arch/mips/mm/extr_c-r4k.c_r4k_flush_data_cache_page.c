
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ in_atomic () ;
 int local_r4k_flush_data_cache_page (void*) ;
 int r4k_on_each_cpu (int (*) (void*),void*,int) ;

__attribute__((used)) static void r4k_flush_data_cache_page(unsigned long addr)
{
 if (in_atomic())
  local_r4k_flush_data_cache_page((void *)addr);
 else
  r4k_on_each_cpu(local_r4k_flush_data_cache_page, (void *) addr,
           1);
}
