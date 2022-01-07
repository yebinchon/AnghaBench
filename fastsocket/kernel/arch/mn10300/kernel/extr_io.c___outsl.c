
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (unsigned long*,unsigned char const*,int) ;
 int outl (unsigned long,unsigned long) ;

void __outsl(unsigned long addr, const void *buffer, int count)
{
 const unsigned char *buf = buffer;
 unsigned long val;

 while (count--) {
  memcpy(&val, buf, 4);
  outl(val, addr);
  buf += 4;
 }
}
