
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mask; unsigned long addr; } ;
struct pt_regs {unsigned long* gprs; int orig_gpr2; TYPE_1__ psw; } ;
typedef int regs ;


 unsigned long CLONE_UNTRACED ;
 unsigned long CLONE_VM ;
 unsigned long PSW_ADDR_AMODE ;
 int PSW_MASK_EXT ;
 int PSW_MASK_IO ;
 scalar_t__ do_exit ;
 int do_fork (unsigned long,int ,struct pt_regs*,int ,int *,int *) ;
 scalar_t__ kernel_thread_starter ;
 int memset (struct pt_regs*,int ,int) ;
 int psw_kernel_bits ;

int kernel_thread(int (*fn)(void *), void * arg, unsigned long flags)
{
 struct pt_regs regs;

 memset(&regs, 0, sizeof(regs));
 regs.psw.mask = psw_kernel_bits | PSW_MASK_IO | PSW_MASK_EXT;
 regs.psw.addr = (unsigned long) kernel_thread_starter | PSW_ADDR_AMODE;
 regs.gprs[9] = (unsigned long) fn;
 regs.gprs[10] = (unsigned long) arg;
 regs.gprs[11] = (unsigned long) do_exit;
 regs.orig_gpr2 = -1;


 return do_fork(flags | CLONE_VM | CLONE_UNTRACED,
         0, &regs, 0, ((void*)0), ((void*)0));
}
