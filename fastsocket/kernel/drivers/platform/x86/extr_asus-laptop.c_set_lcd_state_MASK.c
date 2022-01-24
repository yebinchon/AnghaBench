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
 int /*<<< orphan*/  LCD_ON ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 
 scalar_t__ lcd_switch_handle ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(int value)
{
	int lcd = 0;
	acpi_status status = 0;

	lcd = value ? 1 : 0;

	if (lcd == FUNC2())
		return 0;

	if (lcd_switch_handle) {
		status = FUNC1(lcd_switch_handle,
					      NULL, NULL, NULL);

		if (FUNC0(status))
			FUNC3("Error switching LCD\n");
	}

	FUNC4(NULL, lcd, LCD_ON);
	return 0;
}