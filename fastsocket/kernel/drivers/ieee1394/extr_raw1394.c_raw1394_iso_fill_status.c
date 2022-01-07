
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq_interval; int speed; int channel; int buf_packets; int data_buf_size; } ;
struct raw1394_iso_status {int overflows; int xmit_cycle; int n_packets; TYPE_1__ config; } ;
struct hpsb_iso {int xmit_cycle; int irq_interval; int speed; int channel; int buf_packets; int buf_size; int skips; int overflows; } ;


 int atomic_read (int *) ;
 int hpsb_iso_n_ready (struct hpsb_iso*) ;

__attribute__((used)) static void raw1394_iso_fill_status(struct hpsb_iso *iso,
        struct raw1394_iso_status *stat)
{
 int overflows = atomic_read(&iso->overflows);
 int skips = atomic_read(&iso->skips);

 stat->config.data_buf_size = iso->buf_size;
 stat->config.buf_packets = iso->buf_packets;
 stat->config.channel = iso->channel;
 stat->config.speed = iso->speed;
 stat->config.irq_interval = iso->irq_interval;
 stat->n_packets = hpsb_iso_n_ready(iso);
 stat->overflows = ((skips & 0xFFFF) << 16) | ((overflows & 0xFFFF));
 stat->xmit_cycle = iso->xmit_cycle;
}
