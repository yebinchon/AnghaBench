
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_card {int first_run; int first_clear_frame; int channel; int dma_running; int ohci_IsoRcvContextControlSet; int ohci; TYPE_1__** frames; int ohci_IsoRcvCommandPtr; int ohci_IsoRcvContextMatch; int ohci_IsoRcvContextControlClear; scalar_t__ active_frame; scalar_t__ current_packet; scalar_t__ n_clear_frames; } ;
struct TYPE_2__ {int descriptor_pool_dma; } ;


 int debug_printk (char*,...) ;
 int flush_pci_write (int ) ;
 int mdelay (int) ;
 int printk (char*,...) ;
 int reg_read (int ,int ) ;
 int reg_write (int ,int ,int) ;
 int wmb () ;

__attribute__((used)) static void start_dma_receive(struct video_card *video)
{
 if (video->first_run == 1) {
  video->first_run = 0;


  video->n_clear_frames = 0;
  video->first_clear_frame = -1;
  video->current_packet = 0;
  video->active_frame = 0;


  reg_write(video->ohci, video->ohci_IsoRcvContextControlClear, 0xFFFFFFFF);
  wmb();


  reg_write(video->ohci, video->ohci_IsoRcvContextControlSet, 0x40000000);


  reg_write(video->ohci, video->ohci_IsoRcvContextMatch, 0xf0000000 | video->channel);


  reg_write(video->ohci, video->ohci_IsoRcvCommandPtr,
     video->frames[0]->descriptor_pool_dma | 1);
  wmb();

  video->dma_running = 1;


  reg_write(video->ohci, video->ohci_IsoRcvContextControlSet, 0x8000);
  flush_pci_write(video->ohci);

  debug_printk("dv1394: DMA started\n");
 } else if ( reg_read(video->ohci, video->ohci_IsoRcvContextControlSet) & (1 << 11) ) {
  debug_printk("DEAD, event = %x\n",
        reg_read(video->ohci, video->ohci_IsoRcvContextControlSet) & 0x1F);


  reg_write(video->ohci, video->ohci_IsoRcvContextControlSet, (1 << 12));
 }
}
