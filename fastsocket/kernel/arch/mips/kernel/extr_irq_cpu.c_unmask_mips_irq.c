
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MIPS_CPU_IRQ_BASE ;
 int irq_enable_hazard () ;
 int set_c0_status (int) ;

__attribute__((used)) static inline void unmask_mips_irq(unsigned int irq)
{
 set_c0_status(0x100 << (irq - MIPS_CPU_IRQ_BASE));
 irq_enable_hazard();
}
