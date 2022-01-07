
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int state_encoder_waitok; int state_stale; int workpoll; int workqueue; } ;


 int queue_work (int ,int *) ;
 int trace_stbit (char*,int) ;

__attribute__((used)) static void pvr2_hdw_encoder_wait_timeout(unsigned long data)
{
 struct pvr2_hdw *hdw = (struct pvr2_hdw *)data;
 hdw->state_encoder_waitok = !0;
 trace_stbit("state_encoder_waitok",hdw->state_encoder_waitok);
 hdw->state_stale = !0;
 queue_work(hdw->workqueue,&hdw->workpoll);
}
