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
struct em28xx_dmaqueue {int /*<<< orphan*/  wq; } ;
struct TYPE_4__ {int (* isoc_copy ) (struct em28xx*,struct urb*) ;int num_bufs; int max_pkt_size; struct urb** urb; int /*<<< orphan*/ * transfer_buffer; int /*<<< orphan*/ * vbi_buf; int /*<<< orphan*/ * vid_buf; } ;
struct em28xx {scalar_t__ mode; TYPE_2__ isoc_ctl; int /*<<< orphan*/  udev; struct em28xx_dmaqueue vbiq; struct em28xx_dmaqueue vidq; } ;
struct TYPE_3__ {int offset; int length; } ;

/* Variables and functions */
 scalar_t__ EM28XX_ANALOG_MODE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int URB_ISO_ASAP ; 
 int URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC0 (struct em28xx*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  em28xx_irq_callback ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct em28xx*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct urb**) ; 
 void* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct urb* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct urb*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct em28xx*,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct urb*,int /*<<< orphan*/ ) ; 

int FUNC15(struct em28xx *dev, int max_packets,
		     int num_bufs, int max_pkt_size,
		     int (*isoc_copy) (struct em28xx *dev, struct urb *urb))
{
	struct em28xx_dmaqueue *dma_q = &dev->vidq;
	struct em28xx_dmaqueue *vbi_dma_q = &dev->vbiq;
	int i;
	int sb_size, pipe;
	struct urb *urb;
	int j, k;
	int rc;

	FUNC3("em28xx: called em28xx_prepare_isoc\n");

	/* De-allocates all pending stuff */
	FUNC4(dev);

	dev->isoc_ctl.isoc_copy = isoc_copy;
	dev->isoc_ctl.num_bufs = num_bufs;

	dev->isoc_ctl.urb = FUNC8(sizeof(void *)*num_bufs,  GFP_KERNEL);
	if (!dev->isoc_ctl.urb) {
		FUNC2("cannot alloc memory for usb buffers\n");
		return -ENOMEM;
	}

	dev->isoc_ctl.transfer_buffer = FUNC8(sizeof(void *)*num_bufs,
					      GFP_KERNEL);
	if (!dev->isoc_ctl.transfer_buffer) {
		FUNC2("cannot allocate memory for usb transfer\n");
		FUNC7(dev->isoc_ctl.urb);
		return -ENOMEM;
	}

	dev->isoc_ctl.max_pkt_size = max_pkt_size;
	dev->isoc_ctl.vid_buf = NULL;
	dev->isoc_ctl.vbi_buf = NULL;

	sb_size = max_packets * dev->isoc_ctl.max_pkt_size;

	/* allocate urbs and transfer buffers */
	for (i = 0; i < dev->isoc_ctl.num_bufs; i++) {
		urb = FUNC10(max_packets, GFP_KERNEL);
		if (!urb) {
			FUNC1("cannot alloc isoc_ctl.urb %i\n", i);
			FUNC4(dev);
			return -ENOMEM;
		}
		dev->isoc_ctl.urb[i] = urb;

		dev->isoc_ctl.transfer_buffer[i] = FUNC11(dev->udev,
			sb_size, GFP_KERNEL, &urb->transfer_dma);
		if (!dev->isoc_ctl.transfer_buffer[i]) {
			FUNC1("unable to allocate %i bytes for transfer"
					" buffer %i%s\n",
					sb_size, i,
					FUNC5() ? " while in int" : "");
			FUNC4(dev);
			return -ENOMEM;
		}
		FUNC9(dev->isoc_ctl.transfer_buffer[i], 0, sb_size);

		/* FIXME: this is a hack - should be
			'desc.bEndpointAddress & USB_ENDPOINT_NUMBER_MASK'
			should also be using 'desc.bInterval'
		 */
		pipe = FUNC13(dev->udev,
			dev->mode == EM28XX_ANALOG_MODE ? 0x82 : 0x84);

		FUNC12(urb, dev->udev, pipe,
				 dev->isoc_ctl.transfer_buffer[i], sb_size,
				 em28xx_irq_callback, dev, 1);

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

	FUNC6(&dma_q->wq);
	FUNC6(&vbi_dma_q->wq);

	FUNC0(dev, 1);

	/* submit urbs and enables IRQ */
	for (i = 0; i < dev->isoc_ctl.num_bufs; i++) {
		rc = FUNC14(dev->isoc_ctl.urb[i], GFP_ATOMIC);
		if (rc) {
			FUNC1("submit of urb %i failed (error=%i)\n", i,
				   rc);
			FUNC4(dev);
			return rc;
		}
	}

	return 0;
}