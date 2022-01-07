
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {struct cx8802_dev* priv_data; } ;
struct videobuf_buffer {int dummy; } ;
struct cx88_buffer {int dummy; } ;
struct cx8802_dev {int dummy; } ;


 int cx8802_buf_queue (struct cx8802_dev*,struct cx88_buffer*) ;

__attribute__((used)) static void dvb_buf_queue(struct videobuf_queue *q, struct videobuf_buffer *vb)
{
 struct cx8802_dev *dev = q->priv_data;
 cx8802_buf_queue(dev, (struct cx88_buffer*)vb);
}
