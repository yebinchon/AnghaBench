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
struct urb {int number_of_packets; int transfer_flags; TYPE_1__* iso_frame_desc; int /*<<< orphan*/  transfer_dma; } ;
struct au0828_dmaqueue {int /*<<< orphan*/  wq; } ;
struct TYPE_4__ {int (* isoc_copy ) (struct au0828_dev*,struct urb*) ;int num_bufs; int max_pkt_size; struct urb** urb; int /*<<< orphan*/ * transfer_buffer; int /*<<< orphan*/ * buf; } ;
struct au0828_dev {TYPE_2__ isoc_ctl; int /*<<< orphan*/  usbdev; int /*<<< orphan*/  isoc_in_endpointaddr; struct au0828_dmaqueue vidq; } ;
struct TYPE_3__ {int offset; int length; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int URB_ISO_ASAP ; 
 int URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  au0828_irq_callback ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct au0828_dev*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct urb**) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,char*) ; 
 struct urb* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct urb*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct au0828_dmaqueue*,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct urb*,int /*<<< orphan*/ ) ; 

int FUNC13(struct au0828_dev *dev, int max_packets,
		     int num_bufs, int max_pkt_size,
		     int (*isoc_copy) (struct au0828_dev *dev, struct urb *urb))
{
	struct au0828_dmaqueue *dma_q = &dev->vidq;
	int i;
	int sb_size, pipe;
	struct urb *urb;
	int j, k;
	int rc;

	FUNC0("au0828: called au0828_prepare_isoc\n");

	/* De-allocates all pending stuff */
	FUNC1(dev);

	dev->isoc_ctl.isoc_copy = isoc_copy;
	dev->isoc_ctl.num_bufs = num_bufs;

	dev->isoc_ctl.urb = FUNC5(sizeof(void *)*num_bufs,  GFP_KERNEL);
	if (!dev->isoc_ctl.urb) {
		FUNC0("cannot alloc memory for usb buffers\n");
		return -ENOMEM;
	}

	dev->isoc_ctl.transfer_buffer = FUNC5(sizeof(void *)*num_bufs,
					      GFP_KERNEL);
	if (!dev->isoc_ctl.transfer_buffer) {
		FUNC0("cannot allocate memory for usb transfer\n");
		FUNC4(dev->isoc_ctl.urb);
		return -ENOMEM;
	}

	dev->isoc_ctl.max_pkt_size = max_pkt_size;
	dev->isoc_ctl.buf = NULL;

	sb_size = max_packets * dev->isoc_ctl.max_pkt_size;

	/* allocate urbs and transfer buffers */
	for (i = 0; i < dev->isoc_ctl.num_bufs; i++) {
		urb = FUNC8(max_packets, GFP_KERNEL);
		if (!urb) {
			FUNC0("cannot alloc isoc_ctl.urb %i\n", i);
			FUNC1(dev);
			return -ENOMEM;
		}
		dev->isoc_ctl.urb[i] = urb;

		dev->isoc_ctl.transfer_buffer[i] = FUNC9(dev->usbdev,
			sb_size, GFP_KERNEL, &urb->transfer_dma);
		if (!dev->isoc_ctl.transfer_buffer[i]) {
			FUNC7("unable to allocate %i bytes for transfer"
					" buffer %i%s\n",
					sb_size, i,
					FUNC2() ? " while in int" : "");
			FUNC1(dev);
			return -ENOMEM;
		}
		FUNC6(dev->isoc_ctl.transfer_buffer[i], 0, sb_size);

		pipe = FUNC11(dev->usbdev,
				       dev->isoc_in_endpointaddr),

		FUNC10(urb, dev->usbdev, pipe,
				 dev->isoc_ctl.transfer_buffer[i], sb_size,
				 au0828_irq_callback, dma_q, 1);

		urb->number_of_packets = max_packets;
		urb->transfer_flags = URB_ISO_ASAP | URB_NO_TRANSFER_DMA_MAP;

		k = 0;
		for (j = 0; j < max_packets; j++) {
			urb->iso_frame_desc[j].offset = k;
			urb->iso_frame_desc[j].length =
						dev->isoc_ctl.max_pkt_size;
			k += dev->isoc_ctl.max_pkt_size;
		}
	}

	FUNC3(&dma_q->wq);

	/* submit urbs and enables IRQ */
	for (i = 0; i < dev->isoc_ctl.num_bufs; i++) {
		rc = FUNC12(dev->isoc_ctl.urb[i], GFP_ATOMIC);
		if (rc) {
			FUNC0("submit of urb %i failed (error=%i)\n",
				       i, rc);
			FUNC1(dev);
			return rc;
		}
	}

	return 0;
}