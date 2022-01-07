
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int octeon_flush_icache_all_cores (int *) ;

__attribute__((used)) static void octeon_flush_icache_all(void)
{
 octeon_flush_icache_all_cores(((void*)0));
}
