
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int octeon_local_flush_icache () ;

__attribute__((used)) static void local_octeon_flush_icache_range(unsigned long start,
         unsigned long end)
{
 octeon_local_flush_icache();
}
