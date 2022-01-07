
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline char *__strnend(const char *s, size_t n)
{
 register unsigned long r0 asm("0") = 0;
 const char *p = s + n;

 asm volatile ("0: srst  %0,%1\n"
        "   jo    0b"
        : "+d" (p), "+a" (s) : "d" (r0) : "cc" );
 return (char *) p;
}
