
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {struct cx8802_fh* priv_data; } ;
struct videobuf_buffer {int dummy; } ;
struct cx88_buffer {int dummy; } ;
struct cx8802_fh {int dev; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;


 int cx8802_buf_prepare (struct videobuf_queue*,int ,struct cx88_buffer*,int) ;

__attribute__((used)) static int
bb_buf_prepare(struct videobuf_queue *q, struct videobuf_buffer *vb,
        enum v4l2_field field)
{
 struct cx8802_fh *fh = q->priv_data;
 return cx8802_buf_prepare(q, fh->dev, (struct cx88_buffer*)vb, field);
}
