
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpu_has_vtag_icache ;
 int r4k_blast_icache () ;

__attribute__((used)) static void r4k_flush_icache_all(void)
{
 if (cpu_has_vtag_icache)
  r4k_blast_icache();
}
