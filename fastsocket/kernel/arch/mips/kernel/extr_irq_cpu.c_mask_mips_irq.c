
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MIPS_CPU_IRQ_BASE ;
 int clear_c0_status (int) ;
 int irq_disable_hazard () ;

__attribute__((used)) static inline void mask_mips_irq(unsigned int irq)
{
 clear_c0_status(0x100 << (irq - MIPS_CPU_IRQ_BASE));
 irq_disable_hazard();
}
