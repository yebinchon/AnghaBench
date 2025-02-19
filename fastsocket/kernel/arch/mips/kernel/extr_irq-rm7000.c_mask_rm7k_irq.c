
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int RM7K_CPU_IRQ_BASE ;
 int clear_c0_intcontrol (int) ;

__attribute__((used)) static inline void mask_rm7k_irq(unsigned int irq)
{
 clear_c0_intcontrol(0x100 << (irq - RM7K_CPU_IRQ_BASE));
}
