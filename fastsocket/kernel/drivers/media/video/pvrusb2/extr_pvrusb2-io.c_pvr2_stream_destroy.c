
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_stream {int dummy; } ;


 int PVR2_TRACE_INIT ;
 int kfree (struct pvr2_stream*) ;
 int pvr2_stream_done (struct pvr2_stream*) ;
 int pvr2_trace (int ,char*,struct pvr2_stream*) ;

void pvr2_stream_destroy(struct pvr2_stream *sp)
{
 if (!sp) return;
 pvr2_trace(PVR2_TRACE_INIT,"pvr2_stream_destroy: sp=%p",sp);
 pvr2_stream_done(sp);
 kfree(sp);
}
