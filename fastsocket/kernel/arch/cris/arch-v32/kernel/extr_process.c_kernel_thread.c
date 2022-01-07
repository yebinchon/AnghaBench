
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long r11; unsigned long r12; unsigned long erp; int ccs; } ;
typedef int regs ;


 int CCS_SHIFT ;
 unsigned long CLONE_UNTRACED ;
 unsigned long CLONE_VM ;
 int I_CCS_BITNR ;
 int do_fork (unsigned long,int ,struct pt_regs*,int ,int *,int *) ;
 scalar_t__ kernel_thread_helper ;
 int memset (struct pt_regs*,int ,int) ;

int
kernel_thread(int (*fn)(void *), void * arg, unsigned long flags)
{
 struct pt_regs regs;

 memset(&regs, 0, sizeof(regs));


 regs.r11 = (unsigned long) fn;
 regs.r12 = (unsigned long) arg;
 regs.erp = (unsigned long) kernel_thread_helper;
 regs.ccs = 1 << (I_CCS_BITNR + CCS_SHIFT);


        return do_fork(flags | CLONE_VM | CLONE_UNTRACED, 0, &regs, 0, ((void*)0), ((void*)0));
}
