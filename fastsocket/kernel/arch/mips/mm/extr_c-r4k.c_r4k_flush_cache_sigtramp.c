
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_r4k_flush_cache_sigtramp ;
 int r4k_on_each_cpu (int ,void*,int) ;

__attribute__((used)) static void r4k_flush_cache_sigtramp(unsigned long addr)
{
 r4k_on_each_cpu(local_r4k_flush_cache_sigtramp, (void *) addr, 1);
}
