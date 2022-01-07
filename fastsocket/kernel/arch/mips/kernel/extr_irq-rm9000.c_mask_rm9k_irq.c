
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int RM9K_CPU_IRQ_BASE ;
 int clear_c0_intcontrol (int) ;

__attribute__((used)) static inline void mask_rm9k_irq(unsigned int irq)
{
 clear_c0_intcontrol(0x1000 << (irq - RM9K_CPU_IRQ_BASE));
}
