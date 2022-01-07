
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int
in_irq_stack(unsigned long *stack, unsigned long *irq_stack,
      unsigned long *irq_stack_end)
{
 return (stack >= irq_stack && stack < irq_stack_end);
}
