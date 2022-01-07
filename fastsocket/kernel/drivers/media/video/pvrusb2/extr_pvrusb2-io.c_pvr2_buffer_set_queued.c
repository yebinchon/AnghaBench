
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_stream {int list_lock; struct pvr2_buffer* q_count; struct pvr2_buffer* q_bcount; int queued_list; } ;
struct pvr2_buffer {int state; scalar_t__ max_count; int list_overhead; struct pvr2_stream* stream; } ;


 int BUFFER_CHECK (struct pvr2_buffer*) ;
 int PVR2_TRACE_BUF_FLOW ;
 int list_add_tail (int *,int *) ;
 int pvr2_buffer_remove (struct pvr2_buffer*) ;
 struct pvr2_buffer* pvr2_buffer_state_decode (int ) ;
 int pvr2_buffer_state_queued ;
 int pvr2_trace (int ,char*,struct pvr2_buffer*,struct pvr2_buffer*,struct pvr2_buffer*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pvr2_buffer_set_queued(struct pvr2_buffer *bp)
{
 unsigned long irq_flags;
 struct pvr2_stream *sp;
 BUFFER_CHECK(bp);
 sp = bp->stream;
 pvr2_trace(PVR2_TRACE_BUF_FLOW,
     "/*---TRACE_FLOW---*/ bufferState    %p %6s --> %6s",
     bp,
     pvr2_buffer_state_decode(bp->state),
     pvr2_buffer_state_decode(pvr2_buffer_state_queued));
 spin_lock_irqsave(&sp->list_lock,irq_flags);
 pvr2_buffer_remove(bp);
 list_add_tail(&bp->list_overhead,&sp->queued_list);
 bp->state = pvr2_buffer_state_queued;
 (sp->q_count)++;
 sp->q_bcount += bp->max_count;
 pvr2_trace(PVR2_TRACE_BUF_FLOW,
     "/*---TRACE_FLOW---*/"
     " bufferPool     %8s inc cap=%07d cnt=%02d",
     pvr2_buffer_state_decode(bp->state),
     sp->q_bcount,sp->q_count);
 spin_unlock_irqrestore(&sp->list_lock,irq_flags);
}
