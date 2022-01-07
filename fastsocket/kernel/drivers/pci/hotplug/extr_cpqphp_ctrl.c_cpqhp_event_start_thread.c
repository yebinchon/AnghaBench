
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int cpqhp_event_thread ;
 int err (char*) ;
 int event_thread ;
 int kthread_run (int ,int *,char*) ;

int cpqhp_event_start_thread(void)
{
 cpqhp_event_thread = kthread_run(event_thread, ((void*)0), "phpd_event");
 if (IS_ERR(cpqhp_event_thread)) {
  err ("Can't start up our event thread\n");
  return PTR_ERR(cpqhp_event_thread);
 }

 return 0;
}
