
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {int dummy; } ;
struct videobuf_buffer {int dummy; } ;
struct cx88_buffer {int dummy; } ;


 int cx88_free_buffer (struct videobuf_queue*,struct cx88_buffer*) ;

__attribute__((used)) static void dvb_buf_release(struct videobuf_queue *q,
       struct videobuf_buffer *vb)
{
 cx88_free_buffer(q, (struct cx88_buffer*)vb);
}
