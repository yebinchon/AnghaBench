#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hci_dev {int /*<<< orphan*/  flags; int /*<<< orphan*/  name; struct btusb_data* driver_data; } ;
struct btusb_data {TYPE_1__* intf; int /*<<< orphan*/  flags; int /*<<< orphan*/  intr_anchor; } ;
struct TYPE_3__ {int needs_remote_wakeup; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTUSB_BULK_RUNNING ; 
 int /*<<< orphan*/  BTUSB_INTR_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HCI_RUNNING ; 
 int FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct hci_dev *hdev)
{
	struct btusb_data *data = hdev->driver_data;
	int err;

	FUNC0("%s", hdev->name);

	err = FUNC6(data->intf);
	if (err < 0)
		return err;

	data->intf->needs_remote_wakeup = 1;

	if (FUNC5(HCI_RUNNING, &hdev->flags))
		goto done;

	if (FUNC5(BTUSB_INTR_RUNNING, &data->flags))
		goto done;

	err = FUNC2(hdev, GFP_KERNEL);
	if (err < 0)
		goto failed;

	err = FUNC1(hdev, GFP_KERNEL);
	if (err < 0) {
		FUNC8(&data->intr_anchor);
		goto failed;
	}

	FUNC4(BTUSB_BULK_RUNNING, &data->flags);
	FUNC1(hdev, GFP_KERNEL);

done:
	FUNC7(data->intf);
	return 0;

failed:
	FUNC3(BTUSB_INTR_RUNNING, &data->flags);
	FUNC3(HCI_RUNNING, &hdev->flags);
	FUNC7(data->intf);
	return err;
}