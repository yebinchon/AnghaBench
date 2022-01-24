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
struct urb {int /*<<< orphan*/  actual_length; int /*<<< orphan*/  transfer_buffer; int /*<<< orphan*/  pipe; int /*<<< orphan*/  status; struct hci_dev* context; } ;
struct TYPE_2__ {int /*<<< orphan*/  err_rx; } ;
struct hci_dev {int /*<<< orphan*/  name; TYPE_1__ stat; int /*<<< orphan*/  flags; struct bpa10x_data* driver_data; } ;
struct bpa10x_data {int /*<<< orphan*/  rx_anchor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
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
	struct bpa10x_data *data = hdev->driver_data;
	int err;

	FUNC0("%s urb %p status %d count %d", hdev->name,
					urb, urb->status, urb->actual_length);

	if (!FUNC3(HCI_RUNNING, &hdev->flags))
		return;

	if (urb->status == 0) {
		if (FUNC2(hdev, FUNC5(urb->pipe),
						urb->transfer_buffer,
						urb->actual_length) < 0) {
			FUNC1("%s corrupted event packet", hdev->name);
			hdev->stat.err_rx++;
		}
	}

	FUNC4(urb, &data->rx_anchor);

	err = FUNC6(urb, GFP_ATOMIC);
	if (err < 0) {
		FUNC1("%s urb %p failed to resubmit (%d)",
						hdev->name, urb, -err);
		FUNC7(urb);
	}
}