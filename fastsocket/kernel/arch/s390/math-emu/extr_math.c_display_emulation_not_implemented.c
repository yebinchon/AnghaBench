
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mask; scalar_t__ addr; } ;
struct pt_regs {TYPE_1__ psw; } ;
typedef int __u16 ;
struct TYPE_6__ {scalar_t__ pgm_ilc; } ;
struct TYPE_5__ {unsigned long comm; unsigned long pid; } ;


 TYPE_3__ S390_lowcore ;
 TYPE_2__* current ;
 int printk (char*,char*,unsigned long,unsigned long) ;
 scalar_t__ sysctl_ieee_emulation_warnings ;

__attribute__((used)) static void display_emulation_not_implemented(struct pt_regs *regs, char *instr)
{
        __u16 *location;




        {
                location = (__u16 *)(regs->psw.addr-S390_lowcore.pgm_ilc);
                printk("%s ieee fpu instruction not emulated "
                       "process name: %s pid: %d \n",
                       instr, current->comm, current->pid);
                printk("%s's PSW:    %08lx %08lx\n", instr,
                       (unsigned long) regs->psw.mask,
                       (unsigned long) location);
        }
}
