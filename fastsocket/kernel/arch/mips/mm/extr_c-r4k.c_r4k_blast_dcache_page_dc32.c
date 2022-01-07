
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R4600_HIT_CACHEOP_WAR_IMPL ;
 int blast_dcache32_page (unsigned long) ;

__attribute__((used)) static inline void r4k_blast_dcache_page_dc32(unsigned long addr)
{
 R4600_HIT_CACHEOP_WAR_IMPL;
 blast_dcache32_page(addr);
}
