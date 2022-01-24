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
struct hci_dev {int /*<<< orphan*/  flags; struct bfusb_data* driver_data; } ;
struct bfusb_data {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_dev*,struct bfusb_data*) ; 
 int /*<<< orphan*/  HCI_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfusb_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct hci_dev *hdev)
{
	struct bfusb_data *data = hdev->driver_data;
	unsigned long flags;

	FUNC0("hdev %p bfusb %p", hdev, data);

	if (!FUNC3(HCI_RUNNING, &hdev->flags))
		return 0;

	FUNC4(&data->lock, flags);
	FUNC5(&data->lock, flags);

	FUNC2(data);
	FUNC1(hdev);

	return 0;
}