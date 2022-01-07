
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int memcmp(const void *cs, const void *ct, size_t n)
{
 register unsigned long r2 asm("2") = (unsigned long) cs;
 register unsigned long r3 asm("3") = (unsigned long) n;
 register unsigned long r4 asm("4") = (unsigned long) ct;
 register unsigned long r5 asm("5") = (unsigned long) n;
 int ret;

 asm volatile ("0: clcle %1,%3,0\n"
        "   jo    0b\n"
        "   ipm   %0\n"
        "   srl   %0,28"
        : "=&d" (ret), "+a" (r2), "+a" (r3), "+a" (r4), "+a" (r5)
        : : "cc" );
 if (ret)
  ret = *(char *) r2 - *(char *) r4;
 return ret;
}
