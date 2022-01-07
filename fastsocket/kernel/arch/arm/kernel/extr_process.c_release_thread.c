
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int dummy; } ;
struct task_struct {int dummy; } ;


 int THREAD_NOTIFY_RELEASE ;
 struct thread_info* task_thread_info (struct task_struct*) ;
 int thread_notify (int ,struct thread_info*) ;

void release_thread(struct task_struct *dead_task)
{
 struct thread_info *thread = task_thread_info(dead_task);

 thread_notify(THREAD_NOTIFY_RELEASE, thread);
}
