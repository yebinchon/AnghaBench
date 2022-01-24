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
struct urb {int /*<<< orphan*/  transfer_dma; scalar_t__ transfer_flags; } ;
struct cx231xx_dmaqueue {int current_field; int lines_per_field; int bytes_left_in_line; int* ps_head; int /*<<< orphan*/  wq; scalar_t__* partial_buf; scalar_t__ mpeg_buffer_completed; scalar_t__ left_data_count; scalar_t__ mpeg_buffer_done; scalar_t__ lines_completed; scalar_t__ field1_done; scalar_t__ last_sav; scalar_t__ is_partial_line; scalar_t__ pos; } ;
struct TYPE_4__ {int (* bulk_copy ) (struct cx231xx*,struct urb*) ;int num_bufs; int max_pkt_size; struct urb** urb; int /*<<< orphan*/ * transfer_buffer; int /*<<< orphan*/ * buf; } ;
struct TYPE_3__ {int end_point_addr; TYPE_2__ bulk_ctl; struct cx231xx_dmaqueue vidq; } ;
struct cx231xx {int video_input; int height; int width; int mode_tv; TYPE_1__ video_mode; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  Raw_Video ; 
 int /*<<< orphan*/  TS1_serial_mode ; 
 int /*<<< orphan*/  cx231xx_bulk_irq_callback ; 
 int /*<<< orphan*/  FUNC0 (struct cx231xx*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct cx231xx*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct urb**) ; 
 void* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct urb* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct urb*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct cx231xx_dmaqueue*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct cx231xx*,int) ; 

int FUNC16(struct cx231xx *dev, int max_packets,
		      int num_bufs, int max_pkt_size,
		      int (*bulk_copy) (struct cx231xx *dev, struct urb *urb))
{
	struct cx231xx_dmaqueue *dma_q = &dev->video_mode.vidq;
	int i;
	int sb_size, pipe;
	struct urb *urb;
	int rc;

	dev->video_input = dev->video_input > 2 ? 2 : dev->video_input;

	FUNC1("Setting Video mux to %d\n", dev->video_input);

	FUNC15(dev, dev->video_input);

	/* De-allocates all pending stuff */
	FUNC4(dev);

	dev->video_mode.bulk_ctl.bulk_copy = bulk_copy;
	dev->video_mode.bulk_ctl.num_bufs = num_bufs;
	dma_q->pos = 0;
	dma_q->is_partial_line = 0;
	dma_q->last_sav = 0;
	dma_q->current_field = -1;
	dma_q->field1_done = 0;
	dma_q->lines_per_field = dev->height / 2;
	dma_q->bytes_left_in_line = dev->width << 1;
	dma_q->lines_completed = 0;
	dma_q->mpeg_buffer_done = 0;
	dma_q->left_data_count = 0;
	dma_q->mpeg_buffer_completed = 0;
	dma_q->ps_head[0] = 0x00;
	dma_q->ps_head[1] = 0x00;
	dma_q->ps_head[2] = 0x01;
	dma_q->ps_head[3] = 0xBA;
	for (i = 0; i < 8; i++)
		dma_q->partial_buf[i] = 0;

	dev->video_mode.bulk_ctl.urb =
	    FUNC8(sizeof(void *) * num_bufs, GFP_KERNEL);
	if (!dev->video_mode.bulk_ctl.urb) {
		FUNC3("cannot alloc memory for usb buffers\n");
		return -ENOMEM;
	}

	dev->video_mode.bulk_ctl.transfer_buffer =
	    FUNC8(sizeof(void *) * num_bufs, GFP_KERNEL);
	if (!dev->video_mode.bulk_ctl.transfer_buffer) {
		FUNC3("cannot allocate memory for usbtransfer\n");
		FUNC7(dev->video_mode.bulk_ctl.urb);
		return -ENOMEM;
	}

	dev->video_mode.bulk_ctl.max_pkt_size = max_pkt_size;
	dev->video_mode.bulk_ctl.buf = NULL;

	sb_size = max_packets * dev->video_mode.bulk_ctl.max_pkt_size;

	if (dev->mode_tv == 1)
		dev->video_mode.end_point_addr = 0x81;
	else
		dev->video_mode.end_point_addr = 0x84;


	/* allocate urbs and transfer buffers */
	for (i = 0; i < dev->video_mode.bulk_ctl.num_bufs; i++) {
		urb = FUNC10(0, GFP_KERNEL);
		if (!urb) {
			FUNC2("cannot alloc bulk_ctl.urb %i\n", i);
			FUNC4(dev);
			return -ENOMEM;
		}
		dev->video_mode.bulk_ctl.urb[i] = urb;
		urb->transfer_flags = 0;

		dev->video_mode.bulk_ctl.transfer_buffer[i] =
		    FUNC11(dev->udev, sb_size, GFP_KERNEL,
				     &urb->transfer_dma);
		if (!dev->video_mode.bulk_ctl.transfer_buffer[i]) {
			FUNC2("unable to allocate %i bytes for transfer"
				    " buffer %i%s\n",
				    sb_size, i,
				    FUNC5() ? " while in int" : "");
			FUNC4(dev);
			return -ENOMEM;
		}
		FUNC9(dev->video_mode.bulk_ctl.transfer_buffer[i], 0, sb_size);

		pipe = FUNC13(dev->udev,
				 dev->video_mode.end_point_addr);
		FUNC12(urb, dev->udev, pipe,
				  dev->video_mode.bulk_ctl.transfer_buffer[i],
				  sb_size, cx231xx_bulk_irq_callback, dma_q);
	}

	FUNC6(&dma_q->wq);

	/* submit urbs and enables IRQ */
	for (i = 0; i < dev->video_mode.bulk_ctl.num_bufs; i++) {
		rc = FUNC14(dev->video_mode.bulk_ctl.urb[i],
				    GFP_ATOMIC);
		if (rc) {
			FUNC2("submit of urb %i failed (error=%i)\n", i,
				    rc);
			FUNC4(dev);
			return rc;
		}
	}

	if (dev->mode_tv == 0)
		FUNC0(dev, 1, Raw_Video);
	else
		FUNC0(dev, 1, TS1_serial_mode);

	return 0;
}