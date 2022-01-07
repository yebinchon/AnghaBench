
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_context {int dummy; } ;
struct TYPE_2__ {struct user_context* user; } ;
struct task_struct {TYPE_1__ thread; } ;


 int PT__END ;

__attribute__((used)) static inline long get_reg(struct task_struct *task, int regno)
{
 struct user_context *user = task->thread.user;

 if (regno < 0 || regno >= PT__END)
  return 0;

 return ((unsigned long *) user)[regno];
}
