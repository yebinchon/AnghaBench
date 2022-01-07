
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_stream {int list_lock; } ;
struct pvr2_buffer {int state; struct pvr2_stream* stream; } ;


 int BUFFER_CHECK (struct pvr2_buffer*) ;
 int PVR2_TRACE_BUF_FLOW ;
 int pvr2_buffer_remove (struct pvr2_buffer*) ;
 int pvr2_buffer_state_decode (int ) ;
 int pvr2_buffer_state_none ;
 int pvr2_trace (int ,char*,struct pvr2_buffer*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pvr2_buffer_set_none(struct pvr2_buffer *bp)
{
 unsigned long irq_flags;
 struct pvr2_stream *sp;
 BUFFER_CHECK(bp);
 sp = bp->stream;
 pvr2_trace(PVR2_TRACE_BUF_FLOW,
     "/*---TRACE_FLOW---*/ bufferState    %p %6s --> %6s",
     bp,
     pvr2_buffer_state_decode(bp->state),
     pvr2_buffer_state_decode(pvr2_buffer_state_none));
 spin_lock_irqsave(&sp->list_lock,irq_flags);
 pvr2_buffer_remove(bp);
 spin_unlock_irqrestore(&sp->list_lock,irq_flags);
}
