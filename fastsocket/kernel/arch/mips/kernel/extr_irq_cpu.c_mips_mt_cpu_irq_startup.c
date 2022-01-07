
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MIPS_CPU_IRQ_BASE ;
 int clear_c0_cause (int) ;
 unsigned int dvpe () ;
 int evpe (unsigned int) ;
 int unmask_mips_mt_irq (unsigned int) ;

__attribute__((used)) static unsigned int mips_mt_cpu_irq_startup(unsigned int irq)
{
 unsigned int vpflags = dvpe();

 clear_c0_cause(0x100 << (irq - MIPS_CPU_IRQ_BASE));
 evpe(vpflags);
 unmask_mips_mt_irq(irq);

 return 0;
}
