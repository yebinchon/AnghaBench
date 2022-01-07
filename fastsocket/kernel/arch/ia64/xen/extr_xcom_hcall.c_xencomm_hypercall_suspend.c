
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_shutdown {int reason; } ;
typedef int arg ;


 int SCHEDOP_shutdown ;
 int SHUTDOWN_suspend ;
 int xencomm_arch_hypercall_sched_op (int ,int ) ;
 int xencomm_map_no_alloc (struct sched_shutdown*,int) ;

int
xencomm_hypercall_suspend(unsigned long srec)
{
 struct sched_shutdown arg;

 arg.reason = SHUTDOWN_suspend;

 return xencomm_arch_hypercall_sched_op(
  SCHEDOP_shutdown, xencomm_map_no_alloc(&arg, sizeof(arg)));
}
