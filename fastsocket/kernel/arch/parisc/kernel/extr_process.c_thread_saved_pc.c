
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long kpc; } ;
struct TYPE_4__ {TYPE_1__ regs; } ;
struct task_struct {TYPE_2__ thread; } ;



unsigned long thread_saved_pc(struct task_struct *t)
{
 return t->thread.regs.kpc;
}
