
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videobuf_queue {struct cx23885_fh* priv_data; } ;
struct videobuf_buffer {int dummy; } ;
struct cx23885_fh {TYPE_1__* dev; } ;
struct cx23885_buffer {int dummy; } ;
struct TYPE_2__ {int ts1; } ;


 int cx23885_buf_queue (int *,struct cx23885_buffer*) ;

__attribute__((used)) static void bb_buf_queue(struct videobuf_queue *q,
 struct videobuf_buffer *vb)
{
 struct cx23885_fh *fh = q->priv_data;
 cx23885_buf_queue(&fh->dev->ts1, (struct cx23885_buffer *)vb);
}
