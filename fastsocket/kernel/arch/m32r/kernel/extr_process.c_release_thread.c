
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int pid; } ;


 int DPRINTK (char*,int ) ;

void release_thread(struct task_struct *dead_task)
{

 DPRINTK("pid = %d\n", dead_task->pid);
}
