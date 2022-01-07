
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short inw (unsigned long) ;

void insw(unsigned long addr, void *dst, unsigned long count)
{
 while (count) {
  count -= 2;
  *(unsigned short *)dst = inw(addr);
  dst += 2;

 }
}
