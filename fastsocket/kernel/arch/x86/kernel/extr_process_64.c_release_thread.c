
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {TYPE_2__* mm; int comm; } ;
struct TYPE_3__ {scalar_t__ size; int ldt; } ;
struct TYPE_4__ {TYPE_1__ context; } ;


 int BUG () ;
 int printk (char*,int ,int ,scalar_t__) ;

void release_thread(struct task_struct *dead_task)
{
 if (dead_task->mm) {
  if (dead_task->mm->context.size) {
   printk("WARNING: dead process %8s still has LDT? <%p/%d>\n",
     dead_task->comm,
     dead_task->mm->context.ldt,
     dead_task->mm->context.size);
   BUG();
  }
 }
}
