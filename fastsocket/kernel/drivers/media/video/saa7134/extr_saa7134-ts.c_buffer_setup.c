
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videobuf_queue {struct saa7134_dev* priv_data; } ;
struct TYPE_2__ {unsigned int nr_packets; unsigned int nr_bufs; } ;
struct saa7134_dev {TYPE_1__ ts; } ;


 unsigned int TS_PACKET_SIZE ;
 unsigned int saa7134_buffer_count (unsigned int,unsigned int) ;

__attribute__((used)) static int
buffer_setup(struct videobuf_queue *q, unsigned int *count, unsigned int *size)
{
 struct saa7134_dev *dev = q->priv_data;

 *size = TS_PACKET_SIZE * dev->ts.nr_packets;
 if (0 == *count)
  *count = dev->ts.nr_bufs;
 *count = saa7134_buffer_count(*size,*count);

 return 0;
}
