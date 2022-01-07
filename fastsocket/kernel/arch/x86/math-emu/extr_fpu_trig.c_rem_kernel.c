
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void rem_kernel(unsigned long long st0, unsigned long long *y,
         unsigned long long st1, unsigned long long q, int n)
{
 int dummy;
 unsigned long long x;

 x = st0 << n;




 asm volatile ("mull %4; subl %%eax,%0; sbbl %%edx,%1":"=m"
        (((unsigned *)&x)[0]), "=m"(((unsigned *)&x)[1]),
        "=a"(dummy)
        :"2"(((unsigned *)&st1)[0]), "m"(((unsigned *)&q)[0])
        :"%dx");

 asm volatile ("mull %3; subl %%eax,%0":"=m" (((unsigned *)&x)[1]),
        "=a"(dummy)
        :"1"(((unsigned *)&st1)[1]), "m"(((unsigned *)&q)[0])
        :"%dx");

 asm volatile ("mull %3; subl %%eax,%0":"=m" (((unsigned *)&x)[1]),
        "=a"(dummy)
        :"1"(((unsigned *)&st1)[0]), "m"(((unsigned *)&q)[1])
        :"%dx");

 *y = x;
}
