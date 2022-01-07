
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (char const,unsigned long) ;

void outsb(unsigned long addr, const void *src, unsigned long count)
{
 while (count) {
  count -= 1;
  outb(*(const char *)src, addr);
  src += 1;

 }
}
