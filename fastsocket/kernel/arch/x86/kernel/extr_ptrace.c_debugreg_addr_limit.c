
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 unsigned long IA32_PAGE_OFFSET ;
 unsigned long TASK_SIZE_MAX ;
 int TIF_IA32 ;
 scalar_t__ test_tsk_thread_flag (struct task_struct*,int ) ;

__attribute__((used)) static unsigned long debugreg_addr_limit(struct task_struct *task)
{




 return TASK_SIZE_MAX - 7;
}
