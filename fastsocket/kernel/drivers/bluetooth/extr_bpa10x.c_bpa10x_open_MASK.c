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
struct hci_dev {int /*<<< orphan*/  flags; int /*<<< orphan*/  name; struct bpa10x_data* driver_data; } ;
struct bpa10x_data {int /*<<< orphan*/  rx_anchor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_RUNNING ; 
 int FUNC1 (struct hci_dev*) ; 
 int FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct hci_dev *hdev)
{
	struct bpa10x_data *data = hdev->driver_data;
	int err;

	FUNC0("%s", hdev->name);

	if (FUNC4(HCI_RUNNING, &hdev->flags))
		return 0;

	err = FUNC2(hdev);
	if (err < 0)
		goto error;

	err = FUNC1(hdev);
	if (err < 0)
		goto error;

	return 0;

error:
	FUNC5(&data->rx_anchor);

	FUNC3(HCI_RUNNING, &hdev->flags);

	return err;
}