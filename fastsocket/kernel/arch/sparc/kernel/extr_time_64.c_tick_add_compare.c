
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long TICKCMP_IRQ_BIT ;

__attribute__((used)) static int tick_add_compare(unsigned long adj)
{
 unsigned long orig_tick, new_tick, new_compare;

 __asm__ __volatile__("rd	%%tick, %0"
        : "=r" (orig_tick));

 orig_tick &= ~TICKCMP_IRQ_BIT;
 __asm__ __volatile__("ba,pt	%%xcc, 1f\n\t"
        " add	%1, %2, %0\n\t"
        ".align	64\n"
        "1:\n\t"
        "wr	%0, 0, %%tick_cmpr\n\t"
        "rd	%%tick_cmpr, %%g0\n\t"
        : "=r" (new_compare)
        : "r" (orig_tick), "r" (adj));

 __asm__ __volatile__("rd	%%tick, %0"
        : "=r" (new_tick));
 new_tick &= ~TICKCMP_IRQ_BIT;

 return ((long)(new_tick - (orig_tick+adj))) > 0L;
}
