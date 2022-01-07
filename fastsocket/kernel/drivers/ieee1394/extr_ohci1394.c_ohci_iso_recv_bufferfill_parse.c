
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_ohci {int dummy; } ;
struct ohci_iso_recv {unsigned int dma_offset; unsigned int buf_stride; unsigned int block_dma; int nblocks; struct ti_ohci* ohci; } ;
struct TYPE_2__ {unsigned char* kvirt; } ;
struct hpsb_iso {TYPE_1__ data_buf; int overflows; } ;


 int KERN_ERR ;
 int PRINT (int ,char*,...) ;
 int atomic_inc (int *) ;
 int hpsb_iso_packet_received (struct hpsb_iso*,unsigned int,unsigned short,unsigned short,unsigned short,unsigned char,unsigned char,unsigned char) ;
 int hpsb_iso_wake (struct hpsb_iso*) ;
 int memcpy (int ,unsigned char*,int) ;

__attribute__((used)) static void ohci_iso_recv_bufferfill_parse(struct hpsb_iso *iso, struct ohci_iso_recv *recv)
{
 int wake = 0;
 int runaway = 0;
 struct ti_ohci *ohci = recv->ohci;

 while (1) {



  unsigned int offset;
  unsigned short len, cycle, total_len;
  unsigned char channel, tag, sy;

  unsigned char *p = iso->data_buf.kvirt;

  unsigned int this_block = recv->dma_offset/recv->buf_stride;


  if (runaway++ > 100000) {
   atomic_inc(&iso->overflows);
   PRINT(KERN_ERR,
         "IR DMA error - Runaway during buffer parsing!\n");
   break;
  }


  if (this_block == recv->block_dma)
   break;

  wake = 1;






  len = p[recv->dma_offset+2] | (p[recv->dma_offset+3] << 8);

  if (len > 4096) {
   PRINT(KERN_ERR,
         "IR DMA error - bogus 'len' value %u\n", len);
  }

  channel = p[recv->dma_offset+1] & 0x3F;
  tag = p[recv->dma_offset+1] >> 6;
  sy = p[recv->dma_offset+0] & 0xF;


  recv->dma_offset += 4;


  if (recv->dma_offset >= recv->buf_stride*recv->nblocks) {
   recv->dma_offset -= recv->buf_stride*recv->nblocks;
  }


  offset = recv->dma_offset;


  recv->dma_offset += len;

  total_len = len + 8;

  if (len % 4) {
   recv->dma_offset += 4 - (len%4);
   total_len += 4 - (len%4);
  }


  if (recv->dma_offset >= recv->buf_stride*recv->nblocks) {





   int guard_off = recv->buf_stride*recv->nblocks;
   int tail_len = len - (guard_off - offset);

   if (tail_len > 0 && tail_len < recv->buf_stride) {
    memcpy(iso->data_buf.kvirt + guard_off,
           iso->data_buf.kvirt,
           tail_len);
   }

   recv->dma_offset -= recv->buf_stride*recv->nblocks;
  }


  cycle = p[recv->dma_offset+0] | (p[recv->dma_offset+1]<<8);
  cycle &= 0x1FFF;


  recv->dma_offset += 4;


  if (recv->dma_offset >= recv->buf_stride*recv->nblocks) {
   recv->dma_offset -= recv->buf_stride*recv->nblocks;
  }

  hpsb_iso_packet_received(iso, offset, len, total_len, cycle, channel, tag, sy);
 }

 if (wake)
  hpsb_iso_wake(iso);
}
