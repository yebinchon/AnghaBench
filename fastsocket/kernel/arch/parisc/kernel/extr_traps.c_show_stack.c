
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 void parisc_show_stack (struct task_struct*,unsigned long*,int *) ;

void show_stack(struct task_struct *t, unsigned long *sp)
{
 return parisc_show_stack(t, sp, ((void*)0));
}
