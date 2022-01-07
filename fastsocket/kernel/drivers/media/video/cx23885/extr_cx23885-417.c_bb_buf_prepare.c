
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videobuf_queue {struct cx23885_fh* priv_data; } ;
struct videobuf_buffer {int dummy; } ;
struct cx23885_fh {TYPE_1__* dev; } ;
struct cx23885_buffer {int dummy; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
struct TYPE_2__ {int ts1; } ;


 int cx23885_buf_prepare (struct videobuf_queue*,int *,struct cx23885_buffer*,int) ;

__attribute__((used)) static int bb_buf_prepare(struct videobuf_queue *q,
 struct videobuf_buffer *vb, enum v4l2_field field)
{
 struct cx23885_fh *fh = q->priv_data;
 return cx23885_buf_prepare(q, &fh->dev->ts1,
  (struct cx23885_buffer *)vb,
  field);
}
