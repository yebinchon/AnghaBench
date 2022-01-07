
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* expires; } ;
struct pvr2_hdw {int state_decoder_run; int state_decoder_quiescent; int state_decoder_ready; scalar_t__ pathway_state; scalar_t__ decoder_client_id; TYPE_1__ decoder_stabilization_timer; scalar_t__ flag_decoder_missed; TYPE_1__ quiescent_timer; scalar_t__ state_encoder_ok; int state_encoder_config; int state_pipeline_config; scalar_t__ state_pipeline_pause; scalar_t__ state_pipeline_req; scalar_t__ state_pathway_ok; } ;


 int HZ ;
 scalar_t__ PVR2_CLIENT_ID_SAA7115 ;
 scalar_t__ PVR2_PATHWAY_ANALOG ;
 int TIME_MSEC_DECODER_STABILIZATION_WAIT ;
 int TIME_MSEC_DECODER_WAIT ;
 int add_timer (TYPE_1__*) ;
 int del_timer_sync (TYPE_1__*) ;
 void* jiffies ;
 scalar_t__ pvr2_decoder_enable (struct pvr2_hdw*,int) ;
 int timer_pending (TYPE_1__*) ;
 int trace_stbit (char*,int) ;

__attribute__((used)) static int state_eval_decoder_run(struct pvr2_hdw *hdw)
{
 if (hdw->state_decoder_run) {
  if (hdw->state_encoder_ok) {
   if (hdw->state_pipeline_req &&
       !hdw->state_pipeline_pause &&
       hdw->state_pathway_ok) return 0;
  }
  if (!hdw->flag_decoder_missed) {
   pvr2_decoder_enable(hdw,0);
  }
  hdw->state_decoder_quiescent = 0;
  hdw->state_decoder_run = 0;

  del_timer_sync(&hdw->quiescent_timer);



  del_timer_sync(&hdw->decoder_stabilization_timer);
  hdw->state_decoder_ready = 0;
 } else {
  if (!hdw->state_decoder_quiescent) {
   if (!timer_pending(&hdw->quiescent_timer)) {
    if (!hdw->state_decoder_quiescent) {
     hdw->quiescent_timer.expires =
      jiffies +
      (HZ * TIME_MSEC_DECODER_WAIT
       / 1000);
     add_timer(&hdw->quiescent_timer);
    }
   }



   return 0;
  }
  if (!hdw->state_pathway_ok ||
      (hdw->pathway_state != PVR2_PATHWAY_ANALOG) ||
      !hdw->state_pipeline_req ||
      hdw->state_pipeline_pause ||
      !hdw->state_pipeline_config ||
      !hdw->state_encoder_config ||
      !hdw->state_encoder_ok) return 0;
  del_timer_sync(&hdw->quiescent_timer);
  if (hdw->flag_decoder_missed) return 0;
  if (pvr2_decoder_enable(hdw,!0) < 0) return 0;
  hdw->state_decoder_quiescent = 0;
  hdw->state_decoder_ready = 0;
  hdw->state_decoder_run = !0;
  if (hdw->decoder_client_id == PVR2_CLIENT_ID_SAA7115) {
   hdw->decoder_stabilization_timer.expires =
    jiffies +
    (HZ * TIME_MSEC_DECODER_STABILIZATION_WAIT /
     1000);
   add_timer(&hdw->decoder_stabilization_timer);
  } else {
   hdw->state_decoder_ready = !0;
  }
 }
 trace_stbit("state_decoder_quiescent",hdw->state_decoder_quiescent);
 trace_stbit("state_decoder_run",hdw->state_decoder_run);
 trace_stbit("state_decoder_ready", hdw->state_decoder_ready);
 return !0;
}
