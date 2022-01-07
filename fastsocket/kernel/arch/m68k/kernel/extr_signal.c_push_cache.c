
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CPU_IS_040 ;
 scalar_t__ CPU_IS_060 ;
 unsigned long PAGE_MASK ;

__attribute__((used)) static inline void push_cache (unsigned long vaddr)
{
 if (CPU_IS_040) {
  unsigned long temp;

  __asm__ __volatile__ (".chip 68040\n\t"
          "nop\n\t"
          "ptestr (%1)\n\t"
          "movec %%mmusr,%0\n\t"
          ".chip 68k"
          : "=r" (temp)
          : "a" (vaddr));

  temp &= PAGE_MASK;
  temp |= vaddr & ~PAGE_MASK;

  __asm__ __volatile__ (".chip 68040\n\t"
          "nop\n\t"
          "cpushl %%bc,(%0)\n\t"
          ".chip 68k"
          : : "a" (temp));
 }
 else if (CPU_IS_060) {
  unsigned long temp;
  __asm__ __volatile__ (".chip 68060\n\t"
          "plpar (%0)\n\t"
          ".chip 68k"
          : "=a" (temp)
          : "0" (vaddr));
  __asm__ __volatile__ (".chip 68060\n\t"
          "cpushl %%bc,(%0)\n\t"
          ".chip 68k"
          : : "a" (temp));
 }
 else {





  unsigned long temp;
  asm volatile ("movec %%cacr,%0" : "=r" (temp));
  temp += 4;
  asm volatile ("movec %0,%%caar\n\t"
         "movec %1,%%cacr"
         : : "r" (vaddr), "r" (temp));
  asm volatile ("movec %0,%%caar\n\t"
         "movec %1,%%cacr"
         : : "r" (vaddr + 4), "r" (temp));
 }
}
