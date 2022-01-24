#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct video_card {int ohci_it_ctx; int active_frame; unsigned int n_frames; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  waitq; int /*<<< orphan*/  fasync; int /*<<< orphan*/  dropped_frames; scalar_t__ syt_offset; struct frame** frames; int /*<<< orphan*/  n_clear_frames; int /*<<< orphan*/  ohci_IsoXmitContextControlSet; int /*<<< orphan*/  ohci; int /*<<< orphan*/  ohci_IsoXmitCommandPtr; int /*<<< orphan*/  dma_running; } ;
struct frame {scalar_t__ state; int done; int assigned_timestamp; scalar_t__* frame_end_timestamp; TYPE_2__* cip_syt2; TYPE_1__* cip_syt1; scalar_t__ n_packets; scalar_t__* frame_begin_timestamp; scalar_t__* mid_frame_timestamp; } ;
struct TYPE_4__ {int* b; } ;
struct TYPE_3__ {int* b; } ;

/* Variables and functions */
 scalar_t__ FRAME_READY ; 
 int /*<<< orphan*/  POLL_OUT ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct frame*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(unsigned long data)
{
	int wake = 0;
	struct video_card *video = (struct video_card*) data;

	FUNC6(&video->spinlock);

	if (!video->dma_running)
		goto out;

	FUNC2("ContextControl = %08x, CommandPtr = %08x\n",
	       FUNC5(video->ohci, video->ohci_IsoXmitContextControlSet),
	       FUNC5(video->ohci, video->ohci_IsoXmitCommandPtr)
	       );


	if ( (video->ohci_it_ctx != -1) &&
	    (FUNC5(video->ohci, video->ohci_IsoXmitContextControlSet) & (1 << 10)) ) {

		struct frame *f;
		unsigned int frame, i;


		if (video->active_frame == -1)
			frame = 0;
		else
			frame = video->active_frame;

		/* check all the DMA-able frames */
		for (i = 0; i < video->n_frames; i++, frame = (frame+1) % video->n_frames) {

			FUNC2("IRQ checking frame %d...", frame);
			f = video->frames[frame];
			if (f->state != FRAME_READY) {
				FUNC2("clear, skipping\n");
				/* we don't own this frame */
				continue;
			}

			FUNC2("DMA\n");

			/* check the frame begin semaphore to see if we can free the previous frame */
			if ( *(f->frame_begin_timestamp) ) {
				int prev_frame;
				struct frame *prev_f;



				/* don't reset, need this later *(f->frame_begin_timestamp) = 0; */
				FUNC2("  BEGIN\n");

				prev_frame = frame - 1;
				if (prev_frame == -1)
					prev_frame += video->n_frames;
				prev_f = video->frames[prev_frame];

				/* make sure we can actually garbage collect
				   this frame */
				if ( (prev_f->state == FRAME_READY) &&
				    prev_f->done && (!f->done) )
				{
					FUNC1(prev_f);
					video->n_clear_frames++;
					wake = 1;
					video->active_frame = frame;

					FUNC2("  BEGIN - freeing previous frame %d, new active frame is %d\n", prev_frame, frame);
				} else {
					FUNC2("  BEGIN - can't free yet\n");
				}

				f->done = 1;
			}


			/* see if we need to set the timestamp for the next frame */
			if ( *(f->mid_frame_timestamp) ) {
				struct frame *next_frame;
				u32 begin_ts, ts_cyc, ts_off;

				*(f->mid_frame_timestamp) = 0;

				begin_ts = FUNC4(*(f->frame_begin_timestamp));

				FUNC2("  MIDDLE - first packet was sent at cycle %4u (%2u), assigned timestamp was (%2u) %4u\n",
					   begin_ts & 0x1FFF, begin_ts & 0xF,
					   f->assigned_timestamp >> 12, f->assigned_timestamp & 0xFFF);

				/* prepare next frame and assign timestamp */
				next_frame = video->frames[ (frame+1) % video->n_frames ];

				if (next_frame->state == FRAME_READY) {
					FUNC2("  MIDDLE - next frame is ready, good\n");
				} else {
					FUNC0("dv1394: Underflow! At least one frame has been dropped.\n");
					next_frame = f;
				}

				/* set the timestamp to the timestamp of the last frame sent,
				   plus the length of the last frame sent, plus the syt latency */
				ts_cyc = begin_ts & 0xF;
				/* advance one frame, plus syt latency (typically 2-3) */
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

			/* see if the frame looped */
			if ( *(f->frame_end_timestamp) ) {

				*(f->frame_end_timestamp) = 0;

				FUNC0("  END - the frame looped at least once\n");

				video->dropped_frames++;
			}

		} /* for (each frame) */
	}

	if (wake) {
		FUNC3(&video->fasync, SIGIO, POLL_OUT);

		/* wake readers/writers/ioctl'ers */
		FUNC8(&video->waitq);
	}

out:
	FUNC7(&video->spinlock);
}