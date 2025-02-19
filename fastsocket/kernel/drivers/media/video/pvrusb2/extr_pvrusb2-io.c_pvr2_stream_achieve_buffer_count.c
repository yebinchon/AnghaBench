
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_stream {unsigned int buffer_total_count; unsigned int buffer_target_count; struct pvr2_buffer** buffers; } ;
struct pvr2_buffer {scalar_t__ state; } ;


 int PVR2_TRACE_BUF_POOL ;
 scalar_t__ pvr2_buffer_state_idle ;
 int pvr2_stream_buffer_count (struct pvr2_stream*,unsigned int) ;
 int pvr2_trace (int ,char*,struct pvr2_stream*,unsigned int,unsigned int) ;

__attribute__((used)) static int pvr2_stream_achieve_buffer_count(struct pvr2_stream *sp)
{
 struct pvr2_buffer *bp;
 unsigned int cnt;

 if (sp->buffer_total_count == sp->buffer_target_count) return 0;

 pvr2_trace(PVR2_TRACE_BUF_POOL,
     "/*---TRACE_FLOW---*/"
     " poolCheck      stream=%p cur=%d tgt=%d",
     sp,sp->buffer_total_count,sp->buffer_target_count);

 if (sp->buffer_total_count < sp->buffer_target_count) {
  return pvr2_stream_buffer_count(sp,sp->buffer_target_count);
 }

 cnt = 0;
 while ((sp->buffer_total_count - cnt) > sp->buffer_target_count) {
  bp = sp->buffers[sp->buffer_total_count - (cnt + 1)];
  if (bp->state != pvr2_buffer_state_idle) break;
  cnt++;
 }
 if (cnt) {
  pvr2_stream_buffer_count(sp,sp->buffer_total_count - cnt);
 }

 return 0;
}
