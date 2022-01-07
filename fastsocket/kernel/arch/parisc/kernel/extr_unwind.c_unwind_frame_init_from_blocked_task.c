
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unwind_frame_info {int dummy; } ;
struct pt_regs {int kpc; int * iaoq; int ksp; int * gr; } ;
struct TYPE_2__ {struct pt_regs regs; } ;
struct task_struct {TYPE_1__ thread; } ;


 int GFP_ATOMIC ;
 int kfree (struct pt_regs*) ;
 struct pt_regs* kmalloc (int,int ) ;
 int unwind_frame_init (struct unwind_frame_info*,struct task_struct*,struct pt_regs*) ;

void unwind_frame_init_from_blocked_task(struct unwind_frame_info *info, struct task_struct *t)
{
 struct pt_regs *r = &t->thread.regs;
 struct pt_regs *r2;

 r2 = kmalloc(sizeof(struct pt_regs), GFP_ATOMIC);
 if (!r2)
  return;
 *r2 = *r;
 r2->gr[30] = r->ksp;
 r2->iaoq[0] = r->kpc;
 unwind_frame_init(info, t, r2);
 kfree(r2);
}
