
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ uregs; } ;
struct task_struct {TYPE_1__ thread; } ;



__attribute__((used)) static inline
int put_stack_long(struct task_struct *task, int offset, unsigned long data)
{
 unsigned long stack;

 stack = (unsigned long) task->thread.uregs + offset;
 *(unsigned long *) stack = data;
 return 0;
}
