
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_context {int notify_flag; struct pvr2_context* notify_next; struct pvr2_context* notify_prev; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pvr2_context_mutex ;
 struct pvr2_context* pvr2_context_notify_first ;
 struct pvr2_context* pvr2_context_notify_last ;
 int pvr2_context_sync_data ;
 int wake_up (int *) ;

__attribute__((used)) static void pvr2_context_set_notify(struct pvr2_context *mp, int fl)
{
 int signal_flag = 0;
 mutex_lock(&pvr2_context_mutex);
 if (fl) {
  if (!mp->notify_flag) {
   signal_flag = (pvr2_context_notify_first == ((void*)0));
   mp->notify_prev = pvr2_context_notify_last;
   mp->notify_next = ((void*)0);
   pvr2_context_notify_last = mp;
   if (mp->notify_prev) {
    mp->notify_prev->notify_next = mp;
   } else {
    pvr2_context_notify_first = mp;
   }
   mp->notify_flag = !0;
  }
 } else {
  if (mp->notify_flag) {
   mp->notify_flag = 0;
   if (mp->notify_next) {
    mp->notify_next->notify_prev = mp->notify_prev;
   } else {
    pvr2_context_notify_last = mp->notify_prev;
   }
   if (mp->notify_prev) {
    mp->notify_prev->notify_next = mp->notify_next;
   } else {
    pvr2_context_notify_first = mp->notify_next;
   }
  }
 }
 mutex_unlock(&pvr2_context_mutex);
 if (signal_flag) wake_up(&pvr2_context_sync_data);
}
