
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_struct {int dummy; } ;
struct task_struct {int dummy; } ;


 unsigned long THREAD_SIZE ;
 scalar_t__ task_stack_page (struct task_struct*) ;
 int valid_irq_stack (unsigned long,struct task_struct*,unsigned long) ;

int validate_sp(unsigned long sp, struct task_struct *p,
         unsigned long nbytes)
{
 unsigned long stack_page = (unsigned long)task_stack_page(p);

 if (sp >= stack_page + sizeof(struct thread_struct)
     && sp <= stack_page + THREAD_SIZE - nbytes)
  return 1;

 return valid_irq_stack(sp, p, nbytes);
}
