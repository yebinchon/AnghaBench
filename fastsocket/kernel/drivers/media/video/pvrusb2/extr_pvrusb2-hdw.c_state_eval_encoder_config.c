
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ expires; } ;
struct pvr2_hdw {int state_encoder_config; int state_encoder_waitok; scalar_t__ pathway_state; scalar_t__ state_encoder_ok; TYPE_1__ encoder_wait_timer; int state_pipeline_config; scalar_t__ state_pipeline_req; scalar_t__ state_pipeline_pause; int state_pipeline_idle; int state_pathway_ok; } ;


 int HZ ;
 scalar_t__ PVR2_PATHWAY_ANALOG ;
 int TIME_MSEC_ENCODER_WAIT ;
 int add_timer (TYPE_1__*) ;
 int del_timer_sync (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int pvr2_encoder_configure (struct pvr2_hdw*) ;
 scalar_t__ timer_pending (TYPE_1__*) ;
 int trace_stbit (char*,int) ;

__attribute__((used)) static int state_eval_encoder_config(struct pvr2_hdw *hdw)
{
 if (hdw->state_encoder_config) {
  if (hdw->state_encoder_ok) {
   if (hdw->state_pipeline_req &&
       !hdw->state_pipeline_pause) return 0;
  }
  hdw->state_encoder_config = 0;
  hdw->state_encoder_waitok = 0;
  trace_stbit("state_encoder_waitok",hdw->state_encoder_waitok);

  del_timer_sync(&hdw->encoder_wait_timer);
 } else {
  if (!hdw->state_pathway_ok ||
      (hdw->pathway_state != PVR2_PATHWAY_ANALOG) ||
      !hdw->state_encoder_ok ||
      !hdw->state_pipeline_idle ||
      hdw->state_pipeline_pause ||
      !hdw->state_pipeline_req ||
      !hdw->state_pipeline_config) {



   if (timer_pending(&hdw->encoder_wait_timer)) {
    del_timer_sync(&hdw->encoder_wait_timer);
   }
   if (hdw->state_encoder_waitok) {



    hdw->state_encoder_waitok = 0;
    trace_stbit("state_encoder_waitok",
         hdw->state_encoder_waitok);
    return !0;
   }
   return 0;
  }
  if (!hdw->state_encoder_waitok) {
   if (!timer_pending(&hdw->encoder_wait_timer)) {






    if (!hdw->state_encoder_waitok) {
     hdw->encoder_wait_timer.expires =
      jiffies +
      (HZ * TIME_MSEC_ENCODER_WAIT
       / 1000);
     add_timer(&hdw->encoder_wait_timer);
    }
   }



   return 0;
  }
  pvr2_encoder_configure(hdw);
  if (hdw->state_encoder_ok) hdw->state_encoder_config = !0;
 }
 trace_stbit("state_encoder_config",hdw->state_encoder_config);
 return !0;
}
