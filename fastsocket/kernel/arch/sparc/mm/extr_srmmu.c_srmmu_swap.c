
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long srmmu_swap(unsigned long *addr, unsigned long value)
{
 __asm__ __volatile__("swap [%2], %0" : "=&r" (value) : "0" (value), "r" (addr));
 return value;
}
