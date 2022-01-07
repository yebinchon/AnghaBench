
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int page_id; } ;
struct mm_struct {TYPE_1__ context; } ;


 int NO_CONTEXT ;

int
init_new_context(struct task_struct *tsk, struct mm_struct *mm)
{
 mm->context.page_id = NO_CONTEXT;
 return 0;
}
