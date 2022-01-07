
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int printk (char*,int ) ;
 int task_pid_nr (struct task_struct*) ;

__attribute__((used)) static inline void print_task(struct task_struct *tsk)
{
 printk("Task pid %d\n", task_pid_nr(tsk));
}
