
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static __attribute__((always_inline)) void restore_hardirq_stack(void *orig_sp)
{
 __asm__ __volatile__("mov %0, %%sp" : : "r" (orig_sp));
}
