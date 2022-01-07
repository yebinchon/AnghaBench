
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long debugctlmsr; } ;
struct task_struct {TYPE_1__ thread; } ;


 struct task_struct* current ;
 int get_cpu () ;
 int put_cpu () ;
 int update_debugctlmsr (unsigned long) ;

__attribute__((used)) static void update_task_debugctlmsr(struct task_struct *task,
        unsigned long debugctlmsr)
{
 task->thread.debugctlmsr = debugctlmsr;

 get_cpu();
 if (task == current)
  update_debugctlmsr(debugctlmsr);
 put_cpu();
}
