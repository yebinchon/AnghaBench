
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void *memscan(void *s, int c, size_t n)
{
 register int r0 asm("0") = (char) c;
 const void *ret = s + n;

 asm volatile ("0: srst  %0,%1\n"
        "   jo    0b\n"
        : "+a" (ret), "+&a" (s) : "d" (r0) : "cc" );
 return (void *) ret;
}
