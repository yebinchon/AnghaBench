
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ti_ohci {int dummy; } ;
struct ohci_iso_recv {int nblocks; size_t block_dma; int buf_stride; int block_reader; struct dma_cmd* block; struct ti_ohci* ohci; } ;
struct hpsb_iso {int overflows; int data_buf; } ;
struct dma_cmd {int status; } ;


 int DBGMSG (char*) ;
 int KERN_ERR ;
 int PRINT (int ,char*,unsigned char) ;
 int atomic_inc (int *) ;
 int dma_region_sync_for_cpu (int *,int,int) ;
 int le32_to_cpu (int) ;
 int ohci_iso_recv_bufferfill_parse (struct hpsb_iso*,struct ohci_iso_recv*) ;

__attribute__((used)) static void ohci_iso_recv_bufferfill_task(struct hpsb_iso *iso, struct ohci_iso_recv *recv)
{
 int loop;
 struct ti_ohci *ohci = recv->ohci;


 for (loop = 0; loop < recv->nblocks; loop++) {


  struct dma_cmd *im = &recv->block[recv->block_dma];


  u16 xferstatus = le32_to_cpu(im->status) >> 16;


  u16 rescount = le32_to_cpu(im->status) & 0xFFFF;

  unsigned char event = xferstatus & 0x1F;

  if (!event) {

   break;
  }

  if (event != 0x11) {
   atomic_inc(&iso->overflows);
   PRINT(KERN_ERR,
         "IR DMA error - OHCI error code 0x%02x\n", event);
  }

  if (rescount != 0) {


   break;
  }




  dma_region_sync_for_cpu(&iso->data_buf, recv->block_dma*recv->buf_stride, recv->buf_stride);


  im->status = recv->buf_stride;


  recv->block_dma = (recv->block_dma + 1) % recv->nblocks;

  if ((recv->block_dma+1) % recv->nblocks == recv->block_reader) {
   atomic_inc(&iso->overflows);
   DBGMSG("ISO reception overflow - "
          "ran out of DMA blocks");
  }
 }


 ohci_iso_recv_bufferfill_parse(iso, recv);
}
