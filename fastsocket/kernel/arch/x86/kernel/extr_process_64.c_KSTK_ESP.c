
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long usersp; } ;
struct task_struct {TYPE_1__ thread; } ;
struct TYPE_4__ {unsigned long sp; } ;


 int TIF_IA32 ;
 TYPE_2__* task_pt_regs (struct task_struct*) ;
 scalar_t__ test_tsk_thread_flag (struct task_struct*,int ) ;

unsigned long KSTK_ESP(struct task_struct *task)
{
 return (test_tsk_thread_flag(task, TIF_IA32)) ?
   (task_pt_regs(task)->sp) : ((task)->thread.usersp);
}
