
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv_queue {int bytesused; int length; int buffers; int list; } ;
struct ivtv_stream {int qlock; scalar_t__ buf_size; struct ivtv_queue q_free; } ;
struct ivtv_buffer {scalar_t__ readpos; scalar_t__ bytesused; int list; scalar_t__ dma_xfer_cnt; scalar_t__ b_flags; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ivtv_enqueue(struct ivtv_stream *s, struct ivtv_buffer *buf, struct ivtv_queue *q)
{
 unsigned long flags;


 if (q == &s->q_free) {
  buf->bytesused = 0;
  buf->readpos = 0;
  buf->b_flags = 0;
  buf->dma_xfer_cnt = 0;
 }
 spin_lock_irqsave(&s->qlock, flags);
 list_add_tail(&buf->list, &q->list);
 q->buffers++;
 q->length += s->buf_size;
 q->bytesused += buf->bytesused - buf->readpos;
 spin_unlock_irqrestore(&s->qlock, flags);
}
