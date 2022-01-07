
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr_packets; } ;
struct saa7134_dev {TYPE_1__ ts; } ;


 int SAA7134_TS_DMA0 ;
 int SAA7134_TS_DMA1 ;
 int SAA7134_TS_DMA2 ;
 int SAA7134_TS_PARALLEL ;
 int SAA7134_TS_PARALLEL_SERIAL ;
 int SAA7134_TS_SERIAL1 ;
 int TS_PACKET_SIZE ;
 int saa_writeb (int ,int) ;

int saa7134_ts_init_hw(struct saa7134_dev *dev)
{

 saa_writeb(SAA7134_TS_SERIAL1, 0x00);

 saa_writeb(SAA7134_TS_PARALLEL, 0x6c);
 saa_writeb(SAA7134_TS_PARALLEL_SERIAL, (TS_PACKET_SIZE-1));
 saa_writeb(SAA7134_TS_DMA0, ((dev->ts.nr_packets-1)&0xff));
 saa_writeb(SAA7134_TS_DMA1, (((dev->ts.nr_packets-1)>>8)&0xff));

 saa_writeb(SAA7134_TS_DMA2,
  ((((dev->ts.nr_packets-1)>>16)&0x3f) | 0x00));

 return 0;
}
