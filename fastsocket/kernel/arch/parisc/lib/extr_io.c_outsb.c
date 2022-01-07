
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (unsigned char const,unsigned long) ;

void outsb(unsigned long port, const void * src, unsigned long count)
{
 const unsigned char *p;

 p = (const unsigned char *)src;
 while (count) {
  count--;
  outb(*p, port);
  p++;
 }
}
