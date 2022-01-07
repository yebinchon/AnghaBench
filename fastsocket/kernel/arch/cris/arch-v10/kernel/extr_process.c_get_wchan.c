
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long esp; } ;
struct task_struct {scalar_t__ state; TYPE_1__ thread; } ;


 scalar_t__ TASK_RUNNING ;
 struct task_struct* current ;
 int in_sched_functions (unsigned long) ;

unsigned long get_wchan(struct task_struct *p)
{
        return 0;
}
