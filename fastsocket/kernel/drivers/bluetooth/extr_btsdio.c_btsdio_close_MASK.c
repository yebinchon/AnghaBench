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
struct hci_dev {int /*<<< orphan*/  flags; int /*<<< orphan*/  name; struct btsdio_data* driver_data; } ;
struct btsdio_data {int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_RUNNING ; 
 int /*<<< orphan*/  REG_EN_INTRD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct hci_dev *hdev)
{
	struct btsdio_data *data = hdev->driver_data;

	FUNC0("%s", hdev->name);

	if (!FUNC6(HCI_RUNNING, &hdev->flags))
		return 0;

	FUNC1(data->func);

	FUNC5(data->func, 0x00, REG_EN_INTRD, NULL);

	FUNC4(data->func);
	FUNC2(data->func);

	FUNC3(data->func);

	return 0;
}