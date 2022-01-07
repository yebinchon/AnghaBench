
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_SHIFT ;
 unsigned long SHMLBA ;

__attribute__((used)) static inline unsigned long COLOUR_ALIGN(unsigned long addr,
      unsigned long pgoff)
{
 unsigned long base = (addr+SHMLBA-1)&~(SHMLBA-1);
 unsigned long off = (pgoff<<PAGE_SHIFT) & (SHMLBA-1);

 return base + off;
}
