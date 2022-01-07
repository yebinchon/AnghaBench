
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int clear_fpu (struct task_struct*,int ) ;
 int clear_used_math () ;
 struct task_struct* current ;
 int task_pt_regs (struct task_struct*) ;

void flush_thread(void)
{






}
