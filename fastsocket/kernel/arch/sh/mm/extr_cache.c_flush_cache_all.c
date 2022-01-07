
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cacheop_on_each_cpu (int ,int *,int) ;
 int local_flush_cache_all ;

void flush_cache_all(void)
{
 cacheop_on_each_cpu(local_flush_cache_all, ((void*)0), 1);
}
