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
struct urb {int /*<<< orphan*/  transfer_flags; } ;
struct hci_dev {int /*<<< orphan*/  name; struct bpa10x_data* driver_data; } ;
struct bpa10x_data {int /*<<< orphan*/  rx_anchor; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,struct urb*,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  URB_FREE_BUFFER ; 
 int /*<<< orphan*/  bpa10x_rx_complete ; 
 unsigned char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct urb* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*,int /*<<< orphan*/ ,unsigned int,unsigned char*,int,int /*<<< orphan*/ ,struct hci_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*) ; 

__attribute__((used)) static inline int FUNC10(struct hci_dev *hdev)
{
	struct bpa10x_data *data = hdev->driver_data;
	struct urb *urb;
	unsigned char *buf;
	unsigned int pipe;
	int err, size = 16;

	FUNC0("%s", hdev->name);

	urb = FUNC3(0, GFP_KERNEL);
	if (!urb)
		return -ENOMEM;

	buf = FUNC2(size, GFP_KERNEL);
	if (!buf) {
		FUNC6(urb);
		return -ENOMEM;
	}

	pipe = FUNC7(data->udev, 0x81);

	FUNC5(urb, data->udev, pipe, buf, size,
						bpa10x_rx_complete, hdev, 1);

	urb->transfer_flags |= URB_FREE_BUFFER;

	FUNC4(urb, &data->rx_anchor);

	err = FUNC8(urb, GFP_KERNEL);
	if (err < 0) {
		FUNC1("%s urb %p submission failed (%d)",
						hdev->name, urb, -err);
		FUNC9(urb);
	}

	FUNC6(urb);

	return err;
}