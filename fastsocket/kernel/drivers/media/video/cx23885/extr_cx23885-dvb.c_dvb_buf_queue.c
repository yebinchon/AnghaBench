
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {struct cx23885_tsport* priv_data; } ;
struct videobuf_buffer {int dummy; } ;
struct cx23885_tsport {int dummy; } ;
struct cx23885_buffer {int dummy; } ;


 int cx23885_buf_queue (struct cx23885_tsport*,struct cx23885_buffer*) ;

__attribute__((used)) static void dvb_buf_queue(struct videobuf_queue *q, struct videobuf_buffer *vb)
{
 struct cx23885_tsport *port = q->priv_data;
 cx23885_buf_queue(port, (struct cx23885_buffer *)vb);
}
