
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sh64_dcache_purge_all () ;
 int sh64_icache_inv_all () ;

__attribute__((used)) static void sh5_flush_cache_all(void *unused)
{
 sh64_dcache_purge_all();
 sh64_icache_inv_all();
}
