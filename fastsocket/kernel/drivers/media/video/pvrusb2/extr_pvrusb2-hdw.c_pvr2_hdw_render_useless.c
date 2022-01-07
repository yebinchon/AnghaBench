
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {scalar_t__ flag_ok; scalar_t__ vid_stream; } ;


 int PVR2_TRACE_ERROR_LEGS ;
 int pvr2_hdw_state_sched (struct pvr2_hdw*) ;
 int pvr2_stream_setup (scalar_t__,int *,int ,int ) ;
 int pvr2_trace (int ,char*) ;
 int trace_stbit (char*,scalar_t__) ;

void pvr2_hdw_render_useless(struct pvr2_hdw *hdw)
{
 if (!hdw->flag_ok) return;
 pvr2_trace(PVR2_TRACE_ERROR_LEGS,
     "Device being rendered inoperable");
 if (hdw->vid_stream) {
  pvr2_stream_setup(hdw->vid_stream,((void*)0),0,0);
 }
 hdw->flag_ok = 0;
 trace_stbit("flag_ok",hdw->flag_ok);
 pvr2_hdw_state_sched(hdw);
}
