
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {struct cx23885_tsport* priv_data; } ;
struct videobuf_buffer {int dummy; } ;
struct cx23885_tsport {int dummy; } ;
struct cx23885_buffer {int dummy; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;


 int cx23885_buf_prepare (struct videobuf_queue*,struct cx23885_tsport*,struct cx23885_buffer*,int) ;

__attribute__((used)) static int dvb_buf_prepare(struct videobuf_queue *q,
      struct videobuf_buffer *vb, enum v4l2_field field)
{
 struct cx23885_tsport *port = q->priv_data;
 return cx23885_buf_prepare(q, port, (struct cx23885_buffer *)vb, field);
}
