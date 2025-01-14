
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {struct cx8802_dev* priv_data; } ;
struct cx8802_dev {int ts_packet_size; unsigned int ts_packet_count; } ;


 void* dvb_buf_tscnt ;

__attribute__((used)) static int dvb_buf_setup(struct videobuf_queue *q,
    unsigned int *count, unsigned int *size)
{
 struct cx8802_dev *dev = q->priv_data;

 dev->ts_packet_size = 188 * 4;
 dev->ts_packet_count = dvb_buf_tscnt;

 *size = dev->ts_packet_size * dev->ts_packet_count;
 *count = dvb_buf_tscnt;
 return 0;
}
