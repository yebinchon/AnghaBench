
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int align_ctl; } ;
struct task_struct {TYPE_1__ thread; } ;



int set_unalign_ctl(struct task_struct *tsk, unsigned int val)
{
 tsk->thread.align_ctl = val;
 return 0;
}
