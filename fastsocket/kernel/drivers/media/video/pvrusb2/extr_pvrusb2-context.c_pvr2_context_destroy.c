
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pvr2_context {TYPE_2__* exist_next; TYPE_1__* exist_prev; scalar_t__ hdw; } ;
struct TYPE_4__ {TYPE_1__* exist_prev; } ;
struct TYPE_3__ {TYPE_2__* exist_next; } ;


 int PVR2_TRACE_CTXT ;
 int kfree (struct pvr2_context*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_2__* pvr2_context_exist_first ;
 TYPE_1__* pvr2_context_exist_last ;
 int pvr2_context_mutex ;
 int pvr2_context_set_notify (struct pvr2_context*,int ) ;
 int pvr2_context_sync_data ;
 int pvr2_hdw_destroy (scalar_t__) ;
 int pvr2_trace (int ,char*,struct pvr2_context*) ;
 int wake_up (int *) ;

__attribute__((used)) static void pvr2_context_destroy(struct pvr2_context *mp)
{
 pvr2_trace(PVR2_TRACE_CTXT,"pvr2_context %p (destroy)",mp);
 if (mp->hdw) pvr2_hdw_destroy(mp->hdw);
 pvr2_context_set_notify(mp, 0);
 mutex_lock(&pvr2_context_mutex);
 if (mp->exist_next) {
  mp->exist_next->exist_prev = mp->exist_prev;
 } else {
  pvr2_context_exist_last = mp->exist_prev;
 }
 if (mp->exist_prev) {
  mp->exist_prev->exist_next = mp->exist_next;
 } else {
  pvr2_context_exist_first = mp->exist_next;
 }
 if (!pvr2_context_exist_first) {


  wake_up(&pvr2_context_sync_data);
 }
 mutex_unlock(&pvr2_context_mutex);
 kfree(mp);
}
