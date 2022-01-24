#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {int state_count; int state; int duty_offset; TYPE_2__* states; int /*<<< orphan*/  address; } ;
struct TYPE_5__ {int /*<<< orphan*/  throttling; } ;
struct acpi_processor {int throttling_platform_limit; TYPE_3__ throttling; TYPE_1__ flags; } ;
struct TYPE_8__ {int duty_offset; } ;
struct TYPE_6__ {int performance; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 int EPERM ; 
 TYPE_4__ acpi_gbl_FADT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct acpi_processor *pr,
					      int state, bool force)
{
	u32 value = 0;
	u32 duty_mask = 0;
	u32 duty_value = 0;

	if (!pr)
		return -EINVAL;

	if ((state < 0) || (state > (pr->throttling.state_count - 1)))
		return -EINVAL;

	if (!pr->flags.throttling)
		return -ENODEV;

	if (!force && (state == pr->throttling.state))
		return 0;

	if (state < pr->throttling_platform_limit)
		return -EPERM;
	/*
	 * Calculate the duty_value and duty_mask.
	 */
	if (state) {
		duty_value = pr->throttling.state_count - state;

		duty_value <<= pr->throttling.duty_offset;

		/* Used to clear all duty_value bits */
		duty_mask = pr->throttling.state_count - 1;

		duty_mask <<= acpi_gbl_FADT.duty_offset;
		duty_mask = ~duty_mask;
	}

	FUNC2();

	/*
	 * Disable throttling by writing a 0 to bit 4.  Note that we must
	 * turn it off before you can change the duty_value.
	 */
	value = FUNC1(pr->throttling.address);
	if (value & 0x10) {
		value &= 0xFFFFFFEF;
		FUNC4(value, pr->throttling.address);
	}

	/*
	 * Write the new duty_value and then enable throttling.  Note
	 * that a state value of 0 leaves throttling disabled.
	 */
	if (state) {
		value &= duty_mask;
		value |= duty_value;
		FUNC4(value, pr->throttling.address);

		value |= 0x00000010;
		FUNC4(value, pr->throttling.address);
	}

	pr->throttling.state = state;

	FUNC3();

	FUNC0((ACPI_DB_INFO,
			  "Throttling state set to T%d (%d%%)\n", state,
			  (pr->throttling.states[state].performance ? pr->
			   throttling.states[state].performance / 10 : 0)));

	return 0;
}