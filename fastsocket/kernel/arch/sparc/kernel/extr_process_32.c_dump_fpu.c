
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct pt_regs {int psr; } ;
struct fpq {int dummy; } ;
struct TYPE_9__ {TYPE_3__* pr_regs; } ;
struct TYPE_11__ {int pr_q_entrysize; int pr_qcnt; int pr_en; struct TYPE_11__* pr_q; int pr_fsr; TYPE_1__ pr_fr; } ;
typedef TYPE_3__ elf_fpregset_t ;
struct TYPE_10__ {int fpqdepth; int * fpqueue; int fsr; int * float_regs; } ;
struct TYPE_12__ {TYPE_2__ thread; } ;


 int PSR_EF ;
 int TIF_USEDFPU ;
 int clear_thread_flag (int ) ;
 TYPE_6__* current ;
 int fpsave (int *,int *,int *,int*) ;
 int get_psr () ;
 TYPE_6__* last_task_used_math ;
 int memcpy (TYPE_3__*,int *,int) ;
 int memset (TYPE_3__*,int ,int) ;
 int put_psr (int) ;
 scalar_t__ test_thread_flag (int ) ;
 scalar_t__ used_math () ;

int dump_fpu (struct pt_regs * regs, elf_fpregset_t * fpregs)
{
 if (used_math()) {
  memset(fpregs, 0, sizeof(*fpregs));
  fpregs->pr_q_entrysize = 8;
  return 1;
 }
 if (current == last_task_used_math) {
  put_psr(get_psr() | PSR_EF);
  fpsave(&current->thread.float_regs[0], &current->thread.fsr,
         &current->thread.fpqueue[0], &current->thread.fpqdepth);
  if (regs != ((void*)0)) {
   regs->psr &= ~(PSR_EF);
   last_task_used_math = ((void*)0);
  }
 }

 memcpy(&fpregs->pr_fr.pr_regs[0],
        &current->thread.float_regs[0],
        (sizeof(unsigned long) * 32));
 fpregs->pr_fsr = current->thread.fsr;
 fpregs->pr_qcnt = current->thread.fpqdepth;
 fpregs->pr_q_entrysize = 8;
 fpregs->pr_en = 1;
 if(fpregs->pr_qcnt != 0) {
  memcpy(&fpregs->pr_q[0],
         &current->thread.fpqueue[0],
         sizeof(struct fpq) * fpregs->pr_qcnt);
 }

 memset(&fpregs->pr_q[fpregs->pr_qcnt], 0,
        sizeof(struct fpq) * (32 - fpregs->pr_qcnt));
 return 1;
}
