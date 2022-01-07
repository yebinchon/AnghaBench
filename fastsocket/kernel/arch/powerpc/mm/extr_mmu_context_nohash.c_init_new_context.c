
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {scalar_t__ active; int id; } ;
struct mm_struct {TYPE_1__ context; } ;


 int MMU_NO_CONTEXT ;
 int pr_hard (char*,struct mm_struct*) ;

int init_new_context(struct task_struct *t, struct mm_struct *mm)
{
 pr_hard("initing context for mm @%p\n", mm);

 mm->context.id = MMU_NO_CONTEXT;
 mm->context.active = 0;

 return 0;
}
