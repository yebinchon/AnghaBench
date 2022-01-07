
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_context {int dummy; } ;


 int PVR2_TRACE_CTXT ;
 int kthread_should_stop () ;
 int pvr2_context_check (struct pvr2_context*) ;
 int pvr2_context_cleaned_flag ;
 int pvr2_context_cleanup_data ;
 struct pvr2_context* pvr2_context_notify_first ;
 int pvr2_context_set_notify (struct pvr2_context*,int ) ;
 scalar_t__ pvr2_context_shutok () ;
 int pvr2_context_sync_data ;
 int pvr2_trace (int ,char*) ;
 int wait_event_interruptible (int ,int) ;
 int wake_up (int *) ;

__attribute__((used)) static int pvr2_context_thread_func(void *foo)
{
 struct pvr2_context *mp;

 pvr2_trace(PVR2_TRACE_CTXT,"pvr2_context thread start");

 do {
  while ((mp = pvr2_context_notify_first) != ((void*)0)) {
   pvr2_context_set_notify(mp, 0);
   pvr2_context_check(mp);
  }
  wait_event_interruptible(
   pvr2_context_sync_data,
   ((pvr2_context_notify_first != ((void*)0)) ||
    pvr2_context_shutok()));
 } while (!pvr2_context_shutok());

 pvr2_context_cleaned_flag = !0;
 wake_up(&pvr2_context_cleanup_data);

 pvr2_trace(PVR2_TRACE_CTXT,"pvr2_context thread cleaned up");

 wait_event_interruptible(
  pvr2_context_sync_data,
  kthread_should_stop());

 pvr2_trace(PVR2_TRACE_CTXT,"pvr2_context thread end");

 return 0;
}
