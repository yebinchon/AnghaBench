
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; } ;
struct pvr2_hdw {int state_encoder_run; TYPE_1__ encoder_run_timer; int state_encoder_runok; scalar_t__ state_encoder_ok; } ;


 int HZ ;
 int TIME_MSEC_ENCODER_OK ;
 int add_timer (TYPE_1__*) ;
 int del_timer_sync (TYPE_1__*) ;
 scalar_t__ jiffies ;
 scalar_t__ pvr2_encoder_start (struct pvr2_hdw*) ;
 scalar_t__ pvr2_encoder_stop (struct pvr2_hdw*) ;
 int state_check_disable_encoder_run (struct pvr2_hdw*) ;
 int state_check_enable_encoder_run (struct pvr2_hdw*) ;
 int trace_stbit (char*,int) ;

__attribute__((used)) static int state_eval_encoder_run(struct pvr2_hdw *hdw)
{
 if (hdw->state_encoder_run) {
  if (!state_check_disable_encoder_run(hdw)) return 0;
  if (hdw->state_encoder_ok) {
   del_timer_sync(&hdw->encoder_run_timer);
   if (pvr2_encoder_stop(hdw) < 0) return !0;
  }
  hdw->state_encoder_run = 0;
 } else {
  if (!state_check_enable_encoder_run(hdw)) return 0;
  if (pvr2_encoder_start(hdw) < 0) return !0;
  hdw->state_encoder_run = !0;
  if (!hdw->state_encoder_runok) {
   hdw->encoder_run_timer.expires =
    jiffies + (HZ * TIME_MSEC_ENCODER_OK / 1000);
   add_timer(&hdw->encoder_run_timer);
  }
 }
 trace_stbit("state_encoder_run",hdw->state_encoder_run);
 return !0;
}
