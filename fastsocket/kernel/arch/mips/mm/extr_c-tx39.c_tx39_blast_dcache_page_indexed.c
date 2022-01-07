
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int blast_dcache16_page_indexed (unsigned long) ;

__attribute__((used)) static inline void tx39_blast_dcache_page_indexed(unsigned long addr)
{
 blast_dcache16_page_indexed(addr);
}
