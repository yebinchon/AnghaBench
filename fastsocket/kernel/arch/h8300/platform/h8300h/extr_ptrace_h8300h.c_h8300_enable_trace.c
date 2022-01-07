
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned short* addr; unsigned short inst; } ;
struct TYPE_4__ {TYPE_1__ breakinfo; } ;
struct task_struct {TYPE_2__ thread; } ;


 unsigned short BREAKINST ;
 int PT_PC ;
 unsigned short* getnextpc (struct task_struct*,unsigned short*) ;
 scalar_t__ h8300_get_reg (struct task_struct*,int ) ;

void h8300_enable_trace(struct task_struct *child)
{
 unsigned short *nextpc;
 nextpc = getnextpc(child,(unsigned short *)h8300_get_reg(child, PT_PC));
 child->thread.breakinfo.addr = nextpc;
 child->thread.breakinfo.inst = *nextpc;
 *nextpc = BREAKINST;
}
