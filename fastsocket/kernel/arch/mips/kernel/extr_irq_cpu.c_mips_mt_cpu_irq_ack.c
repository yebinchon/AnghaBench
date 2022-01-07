
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MIPS_CPU_IRQ_BASE ;
 int clear_c0_cause (int) ;
 unsigned int dvpe () ;
 int evpe (unsigned int) ;
 int mask_mips_mt_irq (unsigned int) ;

__attribute__((used)) static void mips_mt_cpu_irq_ack(unsigned int irq)
{
 unsigned int vpflags = dvpe();
 clear_c0_cause(0x100 << (irq - MIPS_CPU_IRQ_BASE));
 evpe(vpflags);
 mask_mips_mt_irq(irq);
}
