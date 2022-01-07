
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int state_encoder_runok; int state_stale; int workpoll; int workqueue; } ;


 int queue_work (int ,int *) ;
 int trace_stbit (char*,int) ;

__attribute__((used)) static void pvr2_hdw_encoder_run_timeout(unsigned long data)
{
 struct pvr2_hdw *hdw = (struct pvr2_hdw *)data;
 if (!hdw->state_encoder_runok) {
  hdw->state_encoder_runok = !0;
  trace_stbit("state_encoder_runok",hdw->state_encoder_runok);
  hdw->state_stale = !0;
  queue_work(hdw->workqueue,&hdw->workpoll);
 }
}
