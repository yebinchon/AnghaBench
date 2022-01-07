
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {struct cx23885_tsport* priv_data; } ;
struct cx23885_tsport {int ts_packet_size; int ts_packet_count; } ;



__attribute__((used)) static int dvb_buf_setup(struct videobuf_queue *q,
    unsigned int *count, unsigned int *size)
{
 struct cx23885_tsport *port = q->priv_data;

 port->ts_packet_size = 188 * 4;
 port->ts_packet_count = 32;

 *size = port->ts_packet_size * port->ts_packet_count;
 *count = 32;
 return 0;
}
