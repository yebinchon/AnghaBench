
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct switch_stack {int a5; } ;
struct sigcontext {int sc_sr; int sc_formatvec; int sc_d0; int sc_usp; int sc_pc; int sc_a5; int sc_a1; int sc_a0; int sc_d1; } ;
struct pt_regs {int sr; int orig_d0; int format; int vector; int pc; int a1; int a0; int d1; } ;
typedef int context ;
struct TYPE_3__ {int fn; } ;
struct TYPE_4__ {TYPE_1__ restart_block; } ;


 scalar_t__ copy_from_user (struct sigcontext*,struct sigcontext*,int) ;
 TYPE_2__* current_thread_info () ;
 int do_no_restart_syscall ;
 int restore_fpu_state (struct sigcontext*) ;
 int wrusp (int ) ;

__attribute__((used)) static inline int
restore_sigcontext(struct pt_regs *regs, struct sigcontext *usc, void *fp,
     int *pd0)
{
 int formatvec;
 struct sigcontext context;
 int err = 0;


 current_thread_info()->restart_block.fn = do_no_restart_syscall;


 if (copy_from_user(&context, usc, sizeof(context)))
  goto badframe;


 regs->d1 = context.sc_d1;
 regs->a0 = context.sc_a0;
 regs->a1 = context.sc_a1;
 ((struct switch_stack *)regs - 1)->a5 = context.sc_a5;
 regs->sr = (regs->sr & 0xff00) | (context.sc_sr & 0xff);
 regs->pc = context.sc_pc;
 regs->orig_d0 = -1;
 wrusp(context.sc_usp);
 formatvec = context.sc_formatvec;
 regs->format = formatvec >> 12;
 regs->vector = formatvec & 0xfff;





 *pd0 = context.sc_d0;
 return err;

badframe:
 return 1;
}
