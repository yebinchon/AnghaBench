
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* regs; } ;
struct task_struct {TYPE_2__ thread; } ;
struct TYPE_3__ {unsigned long trap; } ;



__attribute__((used)) static int set_user_trap(struct task_struct *task, unsigned long trap)
{
 task->thread.regs->trap = trap & 0xfff0;
 return 0;
}
