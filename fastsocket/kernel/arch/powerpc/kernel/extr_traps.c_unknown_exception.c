
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int trap; int msr; int nip; } ;


 int SIGTRAP ;
 int _exception (int ,struct pt_regs*,int ,int ) ;
 int printk (char*,int ,int ,int ) ;

void unknown_exception(struct pt_regs *regs)
{
 printk("Bad trap at PC: %lx, SR: %lx, vector=%lx\n",
        regs->nip, regs->msr, regs->trap);

 _exception(SIGTRAP, regs, 0, 0);
}
