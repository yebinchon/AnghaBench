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
typedef  scalar_t__ u32 ;
struct toshiba_acpi_dev {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ HCI_SUCCESS ; 
 int /*<<< orphan*/  HCI_WIRELESS ; 
 int /*<<< orphan*/  HCI_WIRELESS_BT_ATTACH ; 
 int /*<<< orphan*/  HCI_WIRELESS_BT_POWER ; 
 scalar_t__ FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void *data, bool blocked)
{
	struct toshiba_acpi_dev *dev = data;
	u32 result1, result2;
	u32 value;
	int err;
	bool radio_state;

	value = (blocked == false);

	FUNC2(&dev->mutex);
	if (FUNC0(&radio_state) != HCI_SUCCESS) {
		err = -EBUSY;
		goto out;
	}

	if (!radio_state) {
		err = 0;
		goto out;
	}

	FUNC1(HCI_WIRELESS, value, HCI_WIRELESS_BT_POWER, &result1);
	FUNC1(HCI_WIRELESS, value, HCI_WIRELESS_BT_ATTACH, &result2);

	if (result1 != HCI_SUCCESS || result2 != HCI_SUCCESS)
		err = -EBUSY;
	else
		err = 0;
 out:
	FUNC3(&dev->mutex);
	return err;
}