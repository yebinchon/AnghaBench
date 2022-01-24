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
typedef  int /*<<< orphan*/  u32 ;
struct work_struct {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACER_CAP_BLUETOOTH ; 
 int /*<<< orphan*/  ACER_CAP_WIRELESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  acer_rfkill_work ; 
 int /*<<< orphan*/  bluetooth_rfkill ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wireless_rfkill ; 

__attribute__((used)) static void FUNC6(struct work_struct *ignored)
{
	u32 state;
	acpi_status status;

	status = FUNC1(&state, ACER_CAP_WIRELESS);
	if (FUNC0(status))
		FUNC3(wireless_rfkill, !state);

	if (FUNC2(ACER_CAP_BLUETOOTH)) {
		status = FUNC1(&state, ACER_CAP_BLUETOOTH);
		if (FUNC0(status))
			FUNC3(bluetooth_rfkill, !state);
	}

	FUNC5(&acer_rfkill_work, FUNC4(HZ));
}