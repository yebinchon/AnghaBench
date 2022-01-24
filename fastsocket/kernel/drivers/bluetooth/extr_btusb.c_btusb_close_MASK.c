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
struct btusb_data {int /*<<< orphan*/  deferred; TYPE_1__* intf; int /*<<< orphan*/  flags; int /*<<< orphan*/  waker; int /*<<< orphan*/  work; } ;
struct TYPE_3__ {scalar_t__ needs_remote_wakeup; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTUSB_BULK_RUNNING ; 
 int /*<<< orphan*/  BTUSB_INTR_RUNNING ; 
 int /*<<< orphan*/  BTUSB_ISOC_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct btusb_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct hci_dev *hdev)
{
	struct btusb_data *data = hdev->driver_data;
	int err;

	FUNC0("%s", hdev->name);

	if (!FUNC4(HCI_RUNNING, &hdev->flags))
		return 0;

	FUNC2(&data->work);
	FUNC2(&data->waker);

	FUNC3(BTUSB_ISOC_RUNNING, &data->flags);
	FUNC3(BTUSB_BULK_RUNNING, &data->flags);
	FUNC3(BTUSB_INTR_RUNNING, &data->flags);

	FUNC1(data);
	err = FUNC5(data->intf);
	if (err < 0)
		goto failed;

	data->intf->needs_remote_wakeup = 0;
	FUNC6(data->intf);

failed:
	FUNC7(&data->deferred);
	return 0;
}