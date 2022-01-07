
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char inb (unsigned long) ;

void insb(unsigned long addr, void *dst, unsigned long count)
{
 while (count) {
  count -= 1;
  *(unsigned char *)dst = inb(addr);
  dst += 1;

 }
}
