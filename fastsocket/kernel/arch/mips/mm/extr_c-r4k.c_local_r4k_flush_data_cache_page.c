
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int r4k_blast_dcache_page (unsigned long) ;

__attribute__((used)) static inline void local_r4k_flush_data_cache_page(void * addr)
{
 r4k_blast_dcache_page((unsigned long) addr);
}
