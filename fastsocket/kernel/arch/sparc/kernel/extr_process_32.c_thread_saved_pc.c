
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {unsigned long kpc; } ;


 TYPE_1__* task_thread_info (struct task_struct*) ;

unsigned long thread_saved_pc(struct task_struct *tsk)
{
 return task_thread_info(tsk)->kpc;
}
