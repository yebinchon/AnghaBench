
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long* regs; } ;
struct TYPE_4__ {TYPE_1__ process_regs; } ;
struct task_struct {TYPE_2__ thread; } ;



unsigned long getreg(struct task_struct *child, unsigned long regno)
{
 unsigned long retval = ~0UL;

 retval &= child->thread.process_regs.regs[regno >> 2];
 return retval;
}
