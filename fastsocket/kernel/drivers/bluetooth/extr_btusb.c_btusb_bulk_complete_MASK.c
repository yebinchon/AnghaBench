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
struct urb {int /*<<< orphan*/  actual_length; int /*<<< orphan*/  transfer_buffer; int /*<<< orphan*/  status; struct hci_dev* context; } ;
struct TYPE_2__ {int /*<<< orphan*/  err_rx; int /*<<< orphan*/  byte_rx; } ;
struct hci_dev {int /*<<< orphan*/  name; TYPE_1__ stat; int /*<<< orphan*/  flags; struct btusb_data* driver_data; } ;
struct btusb_data {int /*<<< orphan*/  udev; int /*<<< orphan*/  bulk_anchor; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTUSB_BULK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  HCI_ACLDATA_PKT ; 
 int /*<<< orphan*/  HCI_RUNNING ; 
 scalar_t__ FUNC2 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 

__attribute__((used)) static void FUNC8(struct urb *urb)
{
	struct hci_dev *hdev = urb->context;
	struct btusb_data *data = hdev->driver_data;
	int err;

	FUNC0("%s urb %p status %d count %d", hdev->name,
					urb, urb->status, urb->actual_length);

	if (!FUNC3(HCI_RUNNING, &hdev->flags))
		return;

	if (urb->status == 0) {
		hdev->stat.byte_rx += urb->actual_length;

		if (FUNC2(hdev, HCI_ACLDATA_PKT,
						urb->transfer_buffer,
						urb->actual_length) < 0) {
			FUNC1("%s corrupted ACL packet", hdev->name);
			hdev->stat.err_rx++;
		}
	}

	if (!FUNC3(BTUSB_BULK_RUNNING, &data->flags))
		return;

	FUNC4(urb, &data->bulk_anchor);
	FUNC5(data->udev);

	err = FUNC6(urb, GFP_ATOMIC);
	if (err < 0) {
		FUNC1("%s urb %p failed to resubmit (%d)",
						hdev->name, urb, -err);
		FUNC7(urb);
	}
}