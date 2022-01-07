
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dma; } ;
struct TYPE_5__ {int nr_packets; TYPE_1__ pt_ts; } ;
struct saa7134_dev {int ts_started; size_t board; TYPE_2__ ts; } ;
struct TYPE_6__ {int ts_type; int ts_force_val; } ;


 int BUG_ON (int) ;


 int SAA7134_RS_CONTROL (int) ;
 int SAA7134_RS_CONTROL_BURST_16 ;
 int SAA7134_RS_CONTROL_ME ;
 int SAA7134_RS_PITCH (int) ;
 int SAA7134_TS_DMA0 ;
 int SAA7134_TS_DMA1 ;
 int SAA7134_TS_DMA2 ;
 int SAA7134_TS_PARALLEL ;
 int SAA7134_TS_PARALLEL_SERIAL ;
 int SAA7134_TS_SERIAL0 ;
 int SAA7134_TS_SERIAL1 ;
 int TS_PACKET_SIZE ;
 int dprintk (char*) ;
 TYPE_3__* saa7134_boards ;
 int saa_writeb (int ,int) ;
 int saa_writel (int ,int) ;

int saa7134_ts_start(struct saa7134_dev *dev)
{
 dprintk("TS start\n");

 BUG_ON(dev->ts_started);


 saa_writeb(SAA7134_TS_DMA0, (dev->ts.nr_packets - 1) & 0xff);
 saa_writeb(SAA7134_TS_DMA1,
  ((dev->ts.nr_packets - 1) >> 8) & 0xff);

 saa_writeb(SAA7134_TS_DMA2,
  (((dev->ts.nr_packets - 1) >> 16) & 0x3f) | 0x00);
 saa_writel(SAA7134_RS_PITCH(5), TS_PACKET_SIZE);
 saa_writel(SAA7134_RS_CONTROL(5), SAA7134_RS_CONTROL_BURST_16 |
       SAA7134_RS_CONTROL_ME |
       (dev->ts.pt_ts.dma >> 12));


 saa_writeb(SAA7134_TS_SERIAL1, 0x00);
 saa_writeb(SAA7134_TS_SERIAL1, 0x03);
 saa_writeb(SAA7134_TS_SERIAL1, 0x00);
 saa_writeb(SAA7134_TS_SERIAL1, 0x01);


 saa_writeb(SAA7134_TS_SERIAL1, 0x00);


 switch (saa7134_boards[dev->board].ts_type) {
 case 129:
  saa_writeb(SAA7134_TS_SERIAL0, 0x40);
  saa_writeb(SAA7134_TS_PARALLEL, 0xec |
   (saa7134_boards[dev->board].ts_force_val << 4));
  break;
 case 128:
  saa_writeb(SAA7134_TS_SERIAL0, 0xd8);
  saa_writeb(SAA7134_TS_PARALLEL, 0x6c |
   (saa7134_boards[dev->board].ts_force_val << 4));
  saa_writeb(SAA7134_TS_PARALLEL_SERIAL, 0xbc);
  saa_writeb(SAA7134_TS_SERIAL1, 0x02);
  break;
 }

 dev->ts_started = 1;

 return 0;
}
