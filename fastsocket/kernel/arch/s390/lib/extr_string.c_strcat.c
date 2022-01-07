
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *strcat(char *dest, const char *src)
{
 register int r0 asm("0") = 0;
 unsigned long dummy;
 char *ret = dest;

 asm volatile ("0: srst  %0,%1\n"
        "   jo    0b\n"
        "1: mvst  %0,%2\n"
        "   jo    1b"
        : "=&a" (dummy), "+a" (dest), "+a" (src)
        : "d" (r0), "0" (0UL) : "cc", "memory" );
 return ret;
}
