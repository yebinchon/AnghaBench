
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 scalar_t__ kthread_run (int ,int *,char*) ;
 int pvr2_context_thread_func ;
 scalar_t__ pvr2_context_thread_ptr ;

int pvr2_context_global_init(void)
{
 pvr2_context_thread_ptr = kthread_run(pvr2_context_thread_func,
           ((void*)0),
           "pvrusb2-context");
 return (pvr2_context_thread_ptr ? 0 : -ENOMEM);
}
