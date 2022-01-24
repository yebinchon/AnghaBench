#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint ;
typedef  int /*<<< orphan*/  u8 ;
struct urb {int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  transfer_dma; } ;
struct hdpvr_device {int /*<<< orphan*/  free_buff_list; int /*<<< orphan*/  bulk_in_size; int /*<<< orphan*/  bulk_in_endpointAddr; int /*<<< orphan*/  udev; int /*<<< orphan*/  v4l2_dev; } ;
struct hdpvr_buffer {int /*<<< orphan*/  buff_list; int /*<<< orphan*/  status; struct urb* urb; struct hdpvr_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFSTAT_AVAILABLE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  hdpvr_debug ; 
 int /*<<< orphan*/  FUNC0 (struct hdpvr_device*) ; 
 int /*<<< orphan*/  hdpvr_read_bulk_callback ; 
 int /*<<< orphan*/  FUNC1 (struct hdpvr_buffer*) ; 
 struct hdpvr_buffer* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct urb* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hdpvr_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 

int FUNC11(struct hdpvr_device *dev, uint count)
{
	uint i;
	int retval = -ENOMEM;
	u8 *mem;
	struct hdpvr_buffer *buf;
	struct urb *urb;

	FUNC9(MSG_INFO, hdpvr_debug, &dev->v4l2_dev,
		 "allocating %u buffers\n", count);

	for (i = 0; i < count; i++) {

		buf = FUNC2(sizeof(struct hdpvr_buffer), GFP_KERNEL);
		if (!buf) {
			FUNC10(&dev->v4l2_dev, "cannot allocate buffer\n");
			goto exit;
		}
		buf->dev = dev;

		urb = FUNC4(0, GFP_KERNEL);
		if (!urb) {
			FUNC10(&dev->v4l2_dev, "cannot allocate urb\n");
			goto exit_urb;
		}
		buf->urb = urb;

		mem = FUNC5(dev->udev, dev->bulk_in_size, GFP_KERNEL,
					 &urb->transfer_dma);
		if (!mem) {
			FUNC10(&dev->v4l2_dev,
				 "cannot allocate usb transfer buffer\n");
			goto exit_urb_buffer;
		}

		FUNC6(buf->urb, dev->udev,
				  FUNC8(dev->udev,
						  dev->bulk_in_endpointAddr),
				  mem, dev->bulk_in_size,
				  hdpvr_read_bulk_callback, buf);

		buf->urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
		buf->status = BUFSTAT_AVAILABLE;
		FUNC3(&buf->buff_list, &dev->free_buff_list);
	}
	return 0;
exit_urb_buffer:
	FUNC7(urb);
exit_urb:
	FUNC1(buf);
exit:
	FUNC0(dev);
	return retval;
}