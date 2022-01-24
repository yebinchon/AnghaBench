#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct urb {unsigned int pipe; int transfer_flags; unsigned char* transfer_buffer; int transfer_buffer_length; int /*<<< orphan*/  interval; int /*<<< orphan*/  complete; struct hci_dev* context; int /*<<< orphan*/  dev; } ;
struct hci_dev {int /*<<< orphan*/  name; struct btusb_data* driver_data; } ;
struct btusb_data {int /*<<< orphan*/  isoc_anchor; TYPE_1__* isoc_rx_ep; int /*<<< orphan*/  udev; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  wMaxPacketSize; int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; } ;

/* Variables and functions */
 int BTUSB_MAX_ISOC_FRAMES ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,struct urb*,int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int URB_FREE_BUFFER ; 
 int URB_ISO_ASAP ; 
 int /*<<< orphan*/  FUNC2 (struct urb*,int,int) ; 
 int /*<<< orphan*/  btusb_isoc_complete ; 
 unsigned char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct urb* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct urb*) ; 

__attribute__((used)) static int FUNC11(struct hci_dev *hdev, gfp_t mem_flags)
{
	struct btusb_data *data = hdev->driver_data;
	struct urb *urb;
	unsigned char *buf;
	unsigned int pipe;
	int err, size;

	FUNC0("%s", hdev->name);

	if (!data->isoc_rx_ep)
		return -ENODEV;

	urb = FUNC5(BTUSB_MAX_ISOC_FRAMES, mem_flags);
	if (!urb)
		return -ENOMEM;

	size = FUNC4(data->isoc_rx_ep->wMaxPacketSize) *
						BTUSB_MAX_ISOC_FRAMES;

	buf = FUNC3(size, mem_flags);
	if (!buf) {
		FUNC7(urb);
		return -ENOMEM;
	}

	pipe = FUNC8(data->udev, data->isoc_rx_ep->bEndpointAddress);

	urb->dev      = data->udev;
	urb->pipe     = pipe;
	urb->context  = hdev;
	urb->complete = btusb_isoc_complete;
	urb->interval = data->isoc_rx_ep->bInterval;

	urb->transfer_flags  = URB_FREE_BUFFER | URB_ISO_ASAP;
	urb->transfer_buffer = buf;
	urb->transfer_buffer_length = size;

	FUNC2(urb, size,
			FUNC4(data->isoc_rx_ep->wMaxPacketSize));

	FUNC6(urb, &data->isoc_anchor);

	err = FUNC9(urb, mem_flags);
	if (err < 0) {
		FUNC1("%s urb %p submission failed (%d)",
						hdev->name, urb, -err);
		FUNC10(urb);
	}

	FUNC7(urb);

	return err;
}