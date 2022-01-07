
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int ENOSYS ;
 int die_if_kernel (char*,struct pt_regs*,unsigned long) ;
 int printk (char*,unsigned long) ;

int do_unknown_trapa(unsigned long scId, struct pt_regs *regs)
{

        printk("System call ID error: [0x1#args:8 #syscall:16  0x%lx]\n", scId);

 die_if_kernel("unknown trapa", regs, scId);

 return -ENOSYS;
}
