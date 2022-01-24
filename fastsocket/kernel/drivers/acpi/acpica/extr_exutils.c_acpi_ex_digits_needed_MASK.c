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
typedef  int u32 ;
typedef  scalar_t__ acpi_integer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ex_digits_needed ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static u32 FUNC3(acpi_integer value, u32 base)
{
	u32 num_digits;
	acpi_integer current_value;

	FUNC0(ex_digits_needed);

	/* acpi_integer is unsigned, so we don't worry about a '-' prefix */

	if (value == 0) {
		FUNC2(1);
	}

	current_value = value;
	num_digits = 0;

	/* Count the digits in the requested base */

	while (current_value) {
		(void)FUNC1(current_value, base, &current_value,
					   NULL);
		num_digits++;
	}

	FUNC2(num_digits);
}