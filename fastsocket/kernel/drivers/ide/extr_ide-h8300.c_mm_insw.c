
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;


 unsigned short bswap (int volatile) ;

__attribute__((used)) static void mm_insw(unsigned long addr, void *buf, u32 len)
{
 unsigned short *bp = (unsigned short *)buf;
 for (; len > 0; len--, bp++)
  *bp = bswap(*(volatile u16 *)addr);
}
