
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_frame_info {int ip; int sp; int r31; int rp; struct task_struct* t; } ;
struct task_struct {scalar_t__ pid; } ;
struct pt_regs {int * gr; int * iaoq; } ;


 int dbg (char*,int,int ,int ) ;
 int memset (struct unwind_frame_info*,int ,int) ;

void unwind_frame_init(struct unwind_frame_info *info, struct task_struct *t,
         struct pt_regs *regs)
{
 memset(info, 0, sizeof(struct unwind_frame_info));
 info->t = t;
 info->sp = regs->gr[30];
 info->ip = regs->iaoq[0];
 info->rp = regs->gr[2];
 info->r31 = regs->gr[31];

 dbg("(%d) Start unwind from sp=%08lx ip=%08lx\n",
     t ? (int)t->pid : -1, info->sp, info->ip);
}
