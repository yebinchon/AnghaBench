
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18_stream {int out_work_order; struct cx18* cx; } ;
struct cx18 {int out_work_queue; } ;


 int queue_work (int ,int *) ;

__attribute__((used)) static inline void cx18_stream_load_fw_queue(struct cx18_stream *s)
{
 struct cx18 *cx = s->cx;
 queue_work(cx->out_work_queue, &s->out_work_order);
}
