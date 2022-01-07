
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv_stream {int q_free; int q_predma; int q_dma; int q_full; int q_io; } ;


 int ivtv_queue_move (struct ivtv_stream*,int *,int *,int *,int ) ;

void ivtv_flush_queues(struct ivtv_stream *s)
{
 ivtv_queue_move(s, &s->q_io, ((void*)0), &s->q_free, 0);
 ivtv_queue_move(s, &s->q_full, ((void*)0), &s->q_free, 0);
 ivtv_queue_move(s, &s->q_dma, ((void*)0), &s->q_free, 0);
 ivtv_queue_move(s, &s->q_predma, ((void*)0), &s->q_free, 0);
}
