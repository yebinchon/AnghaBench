
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs_subarch {int xcs; int xss; int esp; int xds; int xes; int * gpr; int ebp; int edi; int esi; int edx; int ecx; int ebx; int eax; int eflags; int eip; } ;


 int current ;
 int printk (char*,...) ;
 int show_trace (int ,int *) ;
 int smp_processor_id () ;

void show_regs(struct pt_regs_subarch *regs)
{
 printk("\n");
 printk("show_regs(): insert regs here.\n");
        show_trace(current, &regs->gpr[1]);
}
