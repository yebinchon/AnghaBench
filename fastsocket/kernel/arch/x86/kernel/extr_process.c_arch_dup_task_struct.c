
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xstate; } ;
struct task_struct {TYPE_1__ thread; } ;
struct fpu {int dummy; } ;


 int fpu_alloc (struct fpu*) ;
 scalar_t__ fpu_allocated (struct fpu*) ;
 int fpu_copy (struct fpu*,struct fpu*) ;
 int memset (int *,int ,int) ;

int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src)
{
 int ret;

 *dst = *src;
 if (fpu_allocated((struct fpu *)&src->thread.xstate)) {
  memset(&dst->thread.xstate, 0, sizeof(dst->thread.xstate));
  ret = fpu_alloc((struct fpu *)&dst->thread.xstate);
  if (ret)
   return ret;
  fpu_copy((struct fpu *)&dst->thread.xstate, (struct fpu *)&src->thread.xstate);
 }
 return 0;
}
