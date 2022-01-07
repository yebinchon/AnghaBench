
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct video_card {int ohci_it_ctx; int active_frame; unsigned int n_frames; int spinlock; int waitq; int fasync; int dropped_frames; scalar_t__ syt_offset; struct frame** frames; int n_clear_frames; int ohci_IsoXmitContextControlSet; int ohci; int ohci_IsoXmitCommandPtr; int dma_running; } ;
struct frame {scalar_t__ state; int done; int assigned_timestamp; scalar_t__* frame_end_timestamp; TYPE_2__* cip_syt2; TYPE_1__* cip_syt1; scalar_t__ n_packets; scalar_t__* frame_begin_timestamp; scalar_t__* mid_frame_timestamp; } ;
struct TYPE_4__ {int* b; } ;
struct TYPE_3__ {int* b; } ;


 scalar_t__ FRAME_READY ;
 int POLL_OUT ;
 int SIGIO ;
 int debug_printk (char*) ;
 int frame_reset (struct frame*) ;
 int irq_printk (char*,...) ;
 int kill_fasync (int *,int ,int ) ;
 int le32_to_cpu (scalar_t__) ;
 int reg_read (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void it_tasklet_func(unsigned long data)
{
 int wake = 0;
 struct video_card *video = (struct video_card*) data;

 spin_lock(&video->spinlock);

 if (!video->dma_running)
  goto out;

 irq_printk("ContextControl = %08x, CommandPtr = %08x\n",
        reg_read(video->ohci, video->ohci_IsoXmitContextControlSet),
        reg_read(video->ohci, video->ohci_IsoXmitCommandPtr)
        );


 if ( (video->ohci_it_ctx != -1) &&
     (reg_read(video->ohci, video->ohci_IsoXmitContextControlSet) & (1 << 10)) ) {

  struct frame *f;
  unsigned int frame, i;


  if (video->active_frame == -1)
   frame = 0;
  else
   frame = video->active_frame;


  for (i = 0; i < video->n_frames; i++, frame = (frame+1) % video->n_frames) {

   irq_printk("IRQ checking frame %d...", frame);
   f = video->frames[frame];
   if (f->state != FRAME_READY) {
    irq_printk("clear, skipping\n");

    continue;
   }

   irq_printk("DMA\n");


   if ( *(f->frame_begin_timestamp) ) {
    int prev_frame;
    struct frame *prev_f;




    irq_printk("  BEGIN\n");

    prev_frame = frame - 1;
    if (prev_frame == -1)
     prev_frame += video->n_frames;
    prev_f = video->frames[prev_frame];



    if ( (prev_f->state == FRAME_READY) &&
        prev_f->done && (!f->done) )
    {
     frame_reset(prev_f);
     video->n_clear_frames++;
     wake = 1;
     video->active_frame = frame;

     irq_printk("  BEGIN - freeing previous frame %d, new active frame is %d\n", prev_frame, frame);
    } else {
     irq_printk("  BEGIN - can't free yet\n");
    }

    f->done = 1;
   }



   if ( *(f->mid_frame_timestamp) ) {
    struct frame *next_frame;
    u32 begin_ts, ts_cyc, ts_off;

    *(f->mid_frame_timestamp) = 0;

    begin_ts = le32_to_cpu(*(f->frame_begin_timestamp));

    irq_printk("  MIDDLE - first packet was sent at cycle %4u (%2u), assigned timestamp was (%2u) %4u\n",
        begin_ts & 0x1FFF, begin_ts & 0xF,
        f->assigned_timestamp >> 12, f->assigned_timestamp & 0xFFF);


    next_frame = video->frames[ (frame+1) % video->n_frames ];

    if (next_frame->state == FRAME_READY) {
     irq_printk("  MIDDLE - next frame is ready, good\n");
    } else {
     debug_printk("dv1394: Underflow! At least one frame has been dropped.\n");
     next_frame = f;
    }



    ts_cyc = begin_ts & 0xF;

    ts_cyc += f->n_packets + video->syt_offset ;

    ts_off = 0;

    ts_cyc += ts_off/3072;
    ts_off %= 3072;

    next_frame->assigned_timestamp = ((ts_cyc&0xF) << 12) + ts_off;
    if (next_frame->cip_syt1) {
     next_frame->cip_syt1->b[6] = next_frame->assigned_timestamp >> 8;
     next_frame->cip_syt1->b[7] = next_frame->assigned_timestamp & 0xFF;
    }
    if (next_frame->cip_syt2) {
     next_frame->cip_syt2->b[6] = next_frame->assigned_timestamp >> 8;
     next_frame->cip_syt2->b[7] = next_frame->assigned_timestamp & 0xFF;
    }

   }


   if ( *(f->frame_end_timestamp) ) {

    *(f->frame_end_timestamp) = 0;

    debug_printk("  END - the frame looped at least once\n");

    video->dropped_frames++;
   }

  }
 }

 if (wake) {
  kill_fasync(&video->fasync, SIGIO, POLL_OUT);


  wake_up_interruptible(&video->waitq);
 }

out:
 spin_unlock(&video->spinlock);
}
