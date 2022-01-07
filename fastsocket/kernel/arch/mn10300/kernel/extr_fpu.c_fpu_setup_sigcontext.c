
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int fpu_state; TYPE_1__* uregs; } ;
struct task_struct {TYPE_2__ thread; } ;
struct fpucontext {int dummy; } ;
struct fpu_state_struct {int dummy; } ;
struct TYPE_3__ {int epsw; } ;


 int EPSW_FE ;
 int clear_using_fpu (struct task_struct*) ;
 scalar_t__ copy_to_user (struct fpucontext*,int *,int ) ;
 struct task_struct* current ;
 int fpu_save (int *) ;
 struct task_struct* fpu_state_owner ;
 int is_using_fpu (struct task_struct*) ;
 int min (int,int) ;
 int preempt_disable () ;
 int preempt_enable () ;

int fpu_setup_sigcontext(struct fpucontext *fpucontext)
{
 return 0;

}
