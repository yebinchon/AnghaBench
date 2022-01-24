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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACER_CAP_BLUETOOTH ; 
 int /*<<< orphan*/  ACER_CAP_WIRELESS ; 
 int /*<<< orphan*/  HZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RFKILL_TYPE_BLUETOOTH ; 
 int /*<<< orphan*/  RFKILL_TYPE_WLAN ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acer_rfkill_work ; 
 int /*<<< orphan*/  bluetooth_rfkill ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wireless_rfkill ; 

__attribute__((used)) static int FUNC8(struct device *dev)
{
	wireless_rfkill = FUNC2(dev, RFKILL_TYPE_WLAN,
		"acer-wireless", ACER_CAP_WIRELESS);
	if (FUNC0(wireless_rfkill))
		return FUNC1(wireless_rfkill);

	if (FUNC3(ACER_CAP_BLUETOOTH)) {
		bluetooth_rfkill = FUNC2(dev,
			RFKILL_TYPE_BLUETOOTH, "acer-bluetooth",
			ACER_CAP_BLUETOOTH);
		if (FUNC0(bluetooth_rfkill)) {
			FUNC5(wireless_rfkill);
			FUNC4(wireless_rfkill);
			return FUNC1(bluetooth_rfkill);
		}
	}

	FUNC7(&acer_rfkill_work, FUNC6(HZ));

	return 0;
}