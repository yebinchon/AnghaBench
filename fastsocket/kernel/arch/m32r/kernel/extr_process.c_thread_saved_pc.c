
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long lr; } ;
struct task_struct {TYPE_1__ thread; } ;



unsigned long thread_saved_pc(struct task_struct *tsk)
{
 return tsk->thread.lr;
}
