
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct io_context* io_context; } ;
struct io_context {int dummy; } ;
typedef int gfp_t ;


 struct io_context* alloc_io_context (int ,int) ;
 struct task_struct* current ;
 scalar_t__ likely (struct io_context*) ;
 int smp_wmb () ;

struct io_context *current_io_context(gfp_t gfp_flags, int node)
{
 struct task_struct *tsk = current;
 struct io_context *ret;

 ret = tsk->io_context;
 if (likely(ret))
  return ret;

 ret = alloc_io_context(gfp_flags, node);
 if (ret) {

  smp_wmb();
  tsk->io_context = ret;
 }

 return ret;
}
