
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct videobuf_queue {struct cx23885_fh* priv_data; } ;
struct cx23885_fh {TYPE_2__* dev; } ;
struct TYPE_3__ {unsigned int ts_packet_size; unsigned int ts_packet_count; } ;
struct TYPE_4__ {TYPE_1__ ts1; } ;


 unsigned int mpegbufs ;
 unsigned int mpeglines ;
 unsigned int mpeglinesize ;

__attribute__((used)) static int bb_buf_setup(struct videobuf_queue *q,
 unsigned int *count, unsigned int *size)
{
 struct cx23885_fh *fh = q->priv_data;

 fh->dev->ts1.ts_packet_size = mpeglinesize;
 fh->dev->ts1.ts_packet_count = mpeglines;

 *size = fh->dev->ts1.ts_packet_size * fh->dev->ts1.ts_packet_count;
 *count = mpegbufs;

 return 0;
}
