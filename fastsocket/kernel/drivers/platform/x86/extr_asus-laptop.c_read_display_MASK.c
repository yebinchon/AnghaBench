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
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long long*) ; 
 scalar_t__ display_get_handle ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(void)
{
	unsigned long long value = 0;
	acpi_status rv = AE_OK;

	/*
	 * In most of the case, we know how to set the display, but sometime
	 * we can't read it
	 */
	if (display_get_handle) {
		rv = FUNC1(display_get_handle, NULL,
					   NULL, &value);
		if (FUNC0(rv))
			FUNC2("Error reading display status\n");
	}

	value &= 0x0F;		/* needed for some models, shouldn't hurt others */

	return value;
}