
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int * gpr; } ;


 int current ;
 int printk (char*,int ,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,struct pt_regs*,int ,int ) ;
 int smp_processor_id () ;

void do_show_syscall(unsigned long r3, unsigned long r4, unsigned long r5,
       unsigned long r6, unsigned long r7, unsigned long r8,
       struct pt_regs *regs)
{
 printk("syscall %ld(%lx, %lx, %lx, %lx, %lx, %lx) regs=%p current=%p"
        " cpu=%d\n", regs->gpr[0], r3, r4, r5, r6, r7, r8, regs,
        current, smp_processor_id());
}
