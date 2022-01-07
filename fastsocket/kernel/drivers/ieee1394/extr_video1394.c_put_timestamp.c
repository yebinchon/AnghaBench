
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ti_ohci {int dummy; } ;
struct TYPE_3__ {unsigned char* kvirt; } ;
struct dma_iso_ctx {int buf_size; int syt_offset; int* next_buffer; int* last_used_cmd; int packet_size; TYPE_2__** it_prg; TYPE_1__ dma; } ;
struct TYPE_4__ {int * data; } ;


 int OHCI1394_IsochronousCycleTimer ;
 int curr ;
 int le32_to_cpu (int ) ;
 int printk (char*,int ,int,int,int) ;
 int reg_read (struct ti_ohci*,int ) ;

__attribute__((used)) static inline void put_timestamp(struct ti_ohci *ohci, struct dma_iso_ctx * d,
     int n)
{
 unsigned char* buf = d->dma.kvirt + n * d->buf_size;
 u32 cycleTimer;
 u32 timeStamp;

 if (n == -1) {
   return;
 }

 cycleTimer = reg_read(ohci, OHCI1394_IsochronousCycleTimer);

 timeStamp = ((cycleTimer & 0x0fff) + d->syt_offset);
 timeStamp = (timeStamp % 3072 + ((timeStamp / 3072) << 12)
  + (cycleTimer & 0xf000)) & 0xffff;

 buf[6] = timeStamp >> 8;
 buf[7] = timeStamp & 0xff;


    if ( (le32_to_cpu(d->it_prg[n][0].data[1]) >>16) == 0x008) {
        buf += d->packet_size;
     buf[6] = timeStamp >> 8;
     buf[7] = timeStamp & 0xff;
 }


 n = d->next_buffer[n];
 if (n == -1) {
   return;
 }
 buf = d->dma.kvirt + n * d->buf_size;

 timeStamp += (d->last_used_cmd[n] << 12) & 0xffff;

 buf[6] = timeStamp >> 8;
 buf[7] = timeStamp & 0xff;


    if ( (le32_to_cpu(d->it_prg[n][0].data[1]) >>16) == 0x008) {
        buf += d->packet_size;
     buf[6] = timeStamp >> 8;
     buf[7] = timeStamp & 0xff;
 }





}
