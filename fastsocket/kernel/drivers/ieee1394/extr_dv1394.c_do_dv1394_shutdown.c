
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct video_card {int ohci_it_ctx; int ohci_ir_ctx; int channel; scalar_t__ packet_buf_size; int packet_buf; scalar_t__ dv_buf_size; int dv_buf; scalar_t__ n_frames; int ** frames; TYPE_1__* ohci; int ir_tasklet; scalar_t__ ohci_IsoRcvContextMatch; scalar_t__ ohci_IsoRcvCommandPtr; scalar_t__ ohci_IsoRcvContextControlClear; scalar_t__ ohci_IsoRcvContextControlSet; int it_tasklet; scalar_t__ ohci_IsoXmitCommandPtr; scalar_t__ ohci_IsoXmitContextControlClear; scalar_t__ ohci_IsoXmitContextControlSet; } ;
struct TYPE_3__ {int ISO_channel_usage; int IR_channel_lock; } ;


 int DV1394_MAX_FRAMES ;
 int OHCI1394_IsoRecvIntMaskClear ;
 int OHCI1394_IsoXmitIntMaskClear ;
 int debug_printk (char*,...) ;
 int dma_region_free (int *) ;
 int frame_delete (int *) ;
 int ohci1394_unregister_iso_tasklet (TYPE_1__*,int *) ;
 int reg_write (TYPE_1__*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stop_dma (struct video_card*) ;

__attribute__((used)) static void do_dv1394_shutdown(struct video_card *video, int free_dv_buf)
{
 int i;

 debug_printk("dv1394: shutdown...\n");


 stop_dma(video);


 if (video->ohci_it_ctx != -1) {
  video->ohci_IsoXmitContextControlSet = 0;
  video->ohci_IsoXmitContextControlClear = 0;
  video->ohci_IsoXmitCommandPtr = 0;


  reg_write(video->ohci, OHCI1394_IsoXmitIntMaskClear, (1 << video->ohci_it_ctx));


  ohci1394_unregister_iso_tasklet(video->ohci, &video->it_tasklet);
  debug_printk("dv1394: IT context %d released\n", video->ohci_it_ctx);
  video->ohci_it_ctx = -1;
 }

 if (video->ohci_ir_ctx != -1) {
  video->ohci_IsoRcvContextControlSet = 0;
  video->ohci_IsoRcvContextControlClear = 0;
  video->ohci_IsoRcvCommandPtr = 0;
  video->ohci_IsoRcvContextMatch = 0;


  reg_write(video->ohci, OHCI1394_IsoRecvIntMaskClear, (1 << video->ohci_ir_ctx));


  ohci1394_unregister_iso_tasklet(video->ohci, &video->ir_tasklet);
  debug_printk("dv1394: IR context %d released\n", video->ohci_ir_ctx);
  video->ohci_ir_ctx = -1;
 }


 if (video->channel != -1) {
  u64 chan_mask;
  unsigned long flags;

  chan_mask = (u64)1 << video->channel;

  spin_lock_irqsave(&video->ohci->IR_channel_lock, flags);
  video->ohci->ISO_channel_usage &= ~(chan_mask);
  spin_unlock_irqrestore(&video->ohci->IR_channel_lock, flags);

  video->channel = -1;
 }


 for (i = 0; i < DV1394_MAX_FRAMES; i++) {
  if (video->frames[i])
   frame_delete(video->frames[i]);
  video->frames[i] = ((void*)0);
 }

 video->n_frames = 0;




 if (free_dv_buf) {
  dma_region_free(&video->dv_buf);
  video->dv_buf_size = 0;
 }


 dma_region_free(&video->packet_buf);
 video->packet_buf_size = 0;

 debug_printk("dv1394: shutdown OK\n");
}
