
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 unsigned long os_process_pc (int ) ;
 int * userspace_pid ;

unsigned long thread_saved_pc(struct task_struct *task)
{

 return os_process_pc(userspace_pid[0]);
}
