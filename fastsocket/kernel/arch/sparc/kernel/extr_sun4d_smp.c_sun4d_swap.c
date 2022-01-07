
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long sun4d_swap(volatile unsigned long *ptr, unsigned long val)
{
 __asm__ __volatile__("swap [%1], %0\n\t" :
        "=&r" (val), "=&r" (ptr) :
        "0" (val), "1" (ptr));
 return val;
}
