
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long INDEX_BASE ;
 int R5K_Page_Invalidate_S ;
 scalar_t__ SC_PAGE ;
 int cache_op (int ,unsigned long) ;
 unsigned long scache_size ;

__attribute__((used)) static inline void blast_r5000_scache(void)
{
 unsigned long start = INDEX_BASE;
 unsigned long end = start + scache_size;

 while(start < end) {
  cache_op(R5K_Page_Invalidate_S, start);
  start += SC_PAGE;
 }
}
