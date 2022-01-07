
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (unsigned long) ;
 unsigned long PAGE_SHIFT ;
 unsigned long l2_start_va (unsigned long) ;
 int raw_local_irq_restore (unsigned long) ;
 int raw_local_irq_save (unsigned long) ;

__attribute__((used)) static inline void l2_clean_pa_range(unsigned long start, unsigned long end)
{
 unsigned long va_start, va_end, flags;






 BUG_ON((start ^ end) >> PAGE_SHIFT);

 raw_local_irq_save(flags);
 va_start = l2_start_va(start);
 va_end = va_start + (end - start);
 __asm__("mcr p15, 1, %0, c15, c9, 4\n\t"
  "mcr p15, 1, %1, c15, c9, 5"
  : : "r" (va_start), "r" (va_end));
 raw_local_irq_restore(flags);
}
