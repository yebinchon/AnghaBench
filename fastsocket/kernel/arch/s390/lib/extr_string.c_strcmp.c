
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int strcmp(const char *cs, const char *ct)
{
 register int r0 asm("0") = 0;
 int ret = 0;

 asm volatile ("0: clst %2,%3\n"
        "   jo   0b\n"
        "   je   1f\n"
        "   ic   %0,0(%2)\n"
        "   ic   %1,0(%3)\n"
        "   sr   %0,%1\n"
        "1:"
        : "+d" (ret), "+d" (r0), "+a" (cs), "+a" (ct)
        : : "cc" );
 return ret;
}
