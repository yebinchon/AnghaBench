
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videobuf_queue {struct cx8802_fh* priv_data; } ;
struct cx8802_fh {TYPE_1__* dev; } ;
struct TYPE_2__ {int ts_packet_size; unsigned int ts_packet_count; } ;


 unsigned int mpegbufs ;

__attribute__((used)) static int bb_buf_setup(struct videobuf_queue *q,
   unsigned int *count, unsigned int *size)
{
 struct cx8802_fh *fh = q->priv_data;

 fh->dev->ts_packet_size = 188 * 4;
 fh->dev->ts_packet_count = mpegbufs;

 *size = fh->dev->ts_packet_size * fh->dev->ts_packet_count;
 *count = fh->dev->ts_packet_count;
 return 0;
}
