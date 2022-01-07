
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int version; int * gregs; } ;
struct ucontext {TYPE_1__ uc_mcontext; } ;
struct switch_stack {int a6; int a5; int a4; int a3; int d7; int d6; } ;
struct pt_regs {int sr; int pc; int a2; int a1; int a0; int d5; int d4; int d3; int d2; int d1; int d0; } ;
typedef int greg_t ;


 int MCONTEXT_VERSION ;
 int __put_user (int ,int *) ;
 int rdusp () ;
 int rt_save_fpu_state (struct ucontext*,struct pt_regs*) ;

__attribute__((used)) static inline int rt_setup_ucontext(struct ucontext *uc, struct pt_regs *regs)
{
 struct switch_stack *sw = (struct switch_stack *)regs - 1;
 greg_t *gregs = uc->uc_mcontext.gregs;
 int err = 0;

 err |= __put_user(MCONTEXT_VERSION, &uc->uc_mcontext.version);
 err |= __put_user(regs->d0, &gregs[0]);
 err |= __put_user(regs->d1, &gregs[1]);
 err |= __put_user(regs->d2, &gregs[2]);
 err |= __put_user(regs->d3, &gregs[3]);
 err |= __put_user(regs->d4, &gregs[4]);
 err |= __put_user(regs->d5, &gregs[5]);
 err |= __put_user(sw->d6, &gregs[6]);
 err |= __put_user(sw->d7, &gregs[7]);
 err |= __put_user(regs->a0, &gregs[8]);
 err |= __put_user(regs->a1, &gregs[9]);
 err |= __put_user(regs->a2, &gregs[10]);
 err |= __put_user(sw->a3, &gregs[11]);
 err |= __put_user(sw->a4, &gregs[12]);
 err |= __put_user(sw->a5, &gregs[13]);
 err |= __put_user(sw->a6, &gregs[14]);
 err |= __put_user(rdusp(), &gregs[15]);
 err |= __put_user(regs->pc, &gregs[16]);
 err |= __put_user(regs->sr, &gregs[17]);



 return err;
}
