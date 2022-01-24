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

/* Variables and functions */
 int /*<<< orphan*/  ACER_CAP_BLUETOOTH ; 
 int /*<<< orphan*/  acer_rfkill_work ; 
 int /*<<< orphan*/  bluetooth_rfkill ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wireless_rfkill ; 

__attribute__((used)) static void FUNC4(void)
{
	FUNC0(&acer_rfkill_work);

	FUNC3(wireless_rfkill);
	FUNC2(wireless_rfkill);

	if (FUNC1(ACER_CAP_BLUETOOTH)) {
		FUNC3(bluetooth_rfkill);
		FUNC2(bluetooth_rfkill);
	}
	return;
}