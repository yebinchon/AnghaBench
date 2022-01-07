
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {int dummy; } ;
struct videobuf_buffer {int dummy; } ;
struct cx23885_buffer {int dummy; } ;


 int cx23885_free_buffer (struct videobuf_queue*,struct cx23885_buffer*) ;

__attribute__((used)) static void dvb_buf_release(struct videobuf_queue *q,
       struct videobuf_buffer *vb)
{
 cx23885_free_buffer(q, (struct cx23885_buffer *)vb);
}
