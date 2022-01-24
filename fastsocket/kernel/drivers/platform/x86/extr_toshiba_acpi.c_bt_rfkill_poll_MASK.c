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
struct rfkill {int dummy; } ;

/* Variables and functions */
 scalar_t__ HCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 scalar_t__ FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct rfkill*,int) ; 

__attribute__((used)) static void FUNC5(struct rfkill *rfkill, void *data)
{
	bool new_rfk_state;
	bool value;
	u32 hci_result;
	struct toshiba_acpi_dev *dev = data;

	FUNC2(&dev->mutex);

	hci_result = FUNC1(&value);
	if (hci_result != HCI_SUCCESS) {
		/* Can't do anything useful */
		FUNC3(&dev->mutex);
		return;
	}

	new_rfk_state = value;

	FUNC3(&dev->mutex);

	if (FUNC4(rfkill, !new_rfk_state))
		FUNC0(data, true);
}