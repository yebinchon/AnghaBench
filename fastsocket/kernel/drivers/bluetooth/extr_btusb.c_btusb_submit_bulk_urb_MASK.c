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
struct urb {int /*<<< orphan*/  transfer_flags; } ;
struct hci_dev {int /*<<< orphan*/  name; struct btusb_data* driver_data; } ;
struct btusb_data {int /*<<< orphan*/  bulk_anchor; int /*<<< orphan*/  udev; TYPE_1__* bulk_rx_ep; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  bEndpointAddress; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,struct urb*,int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int HCI_MAX_FRAME_SIZE ; 
 int /*<<< orphan*/  URB_FREE_BUFFER ; 
 int /*<<< orphan*/  btusb_bulk_complete ; 
 unsigned char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct urb* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*,int /*<<< orphan*/ ,unsigned int,unsigned char*,int,int /*<<< orphan*/ ,struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct urb*) ; 

__attribute__((used)) static int FUNC11(struct hci_dev *hdev, gfp_t mem_flags)
{
	struct btusb_data *data = hdev->driver_data;
	struct urb *urb;
	unsigned char *buf;
	unsigned int pipe;
	int err, size = HCI_MAX_FRAME_SIZE;

	FUNC0("%s", hdev->name);

	if (!data->bulk_rx_ep)
		return -ENODEV;

	urb = FUNC3(0, mem_flags);
	if (!urb)
		return -ENOMEM;

	buf = FUNC2(size, mem_flags);
	if (!buf) {
		FUNC6(urb);
		return -ENOMEM;
	}

	pipe = FUNC8(data->udev, data->bulk_rx_ep->bEndpointAddress);

	FUNC5(urb, data->udev, pipe,
					buf, size, btusb_bulk_complete, hdev);

	urb->transfer_flags |= URB_FREE_BUFFER;

	FUNC7(data->udev);
	FUNC4(urb, &data->bulk_anchor);

	err = FUNC9(urb, mem_flags);
	if (err < 0) {
		FUNC1("%s urb %p submission failed (%d)",
						hdev->name, urb, -err);
		FUNC10(urb);
	}

	FUNC6(urb);

	return err;
}