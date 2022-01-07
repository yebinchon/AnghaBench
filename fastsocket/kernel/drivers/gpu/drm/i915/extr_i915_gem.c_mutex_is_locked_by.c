
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {struct task_struct* task; } ;
struct task_struct {int dummy; } ;
struct mutex {struct thread_info* owner; } ;


 int mutex_is_locked (struct mutex*) ;

__attribute__((used)) static bool mutex_is_locked_by(struct mutex *mutex, struct task_struct *task)
{
 if (!mutex_is_locked(mutex))
  return 0;
 return 0;
}
