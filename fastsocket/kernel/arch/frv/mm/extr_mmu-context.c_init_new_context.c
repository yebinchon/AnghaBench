
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int itlb_cached_pge; int dtlb_cached_pge; int id_link; } ;
struct mm_struct {TYPE_1__ context; } ;


 int INIT_LIST_HEAD (int *) ;
 int memset (TYPE_1__*,int ,int) ;

int init_new_context(struct task_struct *tsk, struct mm_struct *mm)
{
 memset(&mm->context, 0, sizeof(mm->context));
 INIT_LIST_HEAD(&mm->context.id_link);
 mm->context.itlb_cached_pge = 0xffffffffUL;
 mm->context.dtlb_cached_pge = 0xffffffffUL;

 return 0;
}
