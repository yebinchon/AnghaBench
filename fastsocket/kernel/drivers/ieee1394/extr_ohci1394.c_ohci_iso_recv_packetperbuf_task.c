
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct ti_ohci {int dummy; } ;
struct TYPE_3__ {scalar_t__ kvirt; } ;
struct ohci_iso_recv {int nblocks; int buf_stride; unsigned int block_dma; TYPE_1__ prog; struct ti_ohci* ohci; } ;
struct TYPE_4__ {unsigned char* kvirt; } ;
struct hpsb_iso {int pkt_dma; TYPE_2__ data_buf; } ;
struct dma_cmd {unsigned int status; } ;


 int KERN_ERR ;
 int PRINT (int ,char*,...) ;
 int dma_region_sync_for_cpu (TYPE_2__*,int,int) ;
 int hpsb_iso_packet_received (struct hpsb_iso*,unsigned int,int,unsigned int,unsigned short,unsigned char,unsigned char,unsigned char) ;
 int hpsb_iso_wake (struct hpsb_iso*) ;
 int le32_to_cpu (unsigned int) ;

__attribute__((used)) static void ohci_iso_recv_packetperbuf_task(struct hpsb_iso *iso, struct ohci_iso_recv *recv)
{
 int count;
 int wake = 0;
 struct ti_ohci *ohci = recv->ohci;


 for (count = 0; count < recv->nblocks; count++) {
  u32 packet_len = 0;


  struct dma_cmd *il = ((struct dma_cmd*) recv->prog.kvirt) + iso->pkt_dma;


  u16 xferstatus = le32_to_cpu(il->status) >> 16;
  u16 rescount = le32_to_cpu(il->status) & 0xFFFF;

  unsigned char event = xferstatus & 0x1F;

  if (!event) {

   goto out;
  }

  if (event == 0x11) {




   packet_len = recv->buf_stride - rescount;

  } else if (event == 0x02) {
   PRINT(KERN_ERR, "IR DMA error - packet too long for buffer\n");
  } else if (event) {
   PRINT(KERN_ERR, "IR DMA error - OHCI error code 0x%02x\n", event);
  }


  dma_region_sync_for_cpu(&iso->data_buf, iso->pkt_dma * recv->buf_stride, recv->buf_stride);


  {

   unsigned char *hdr;

   unsigned int offset;
   unsigned short cycle;
   unsigned char channel, tag, sy;

   offset = iso->pkt_dma * recv->buf_stride;
   hdr = iso->data_buf.kvirt + offset;


   offset += 8;
   packet_len -= 8;

   cycle = (hdr[0] | (hdr[1] << 8)) & 0x1FFF;
   channel = hdr[5] & 0x3F;
   tag = hdr[5] >> 6;
   sy = hdr[4] & 0xF;

   hpsb_iso_packet_received(iso, offset, packet_len,
     recv->buf_stride, cycle, channel, tag, sy);
  }


  il->status = recv->buf_stride;

  wake = 1;
  recv->block_dma = iso->pkt_dma;
 }

out:
 if (wake)
  hpsb_iso_wake(iso);
}
