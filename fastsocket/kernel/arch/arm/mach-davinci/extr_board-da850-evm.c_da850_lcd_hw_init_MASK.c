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
 int /*<<< orphan*/  DA850_LCD_BL_PIN ; 
 int /*<<< orphan*/  DA850_LCD_PWR_PIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(void)
{
	int status;

	status = FUNC2(DA850_LCD_BL_PIN, "lcd bl\n");
	if (status < 0)
		return status;

	status = FUNC2(DA850_LCD_PWR_PIN, "lcd pwr\n");
	if (status < 0) {
		FUNC1(DA850_LCD_BL_PIN);
		return status;
	}

	FUNC0(DA850_LCD_BL_PIN, 0);
	FUNC0(DA850_LCD_PWR_PIN, 0);

	/* disable lcd backlight */
	FUNC3(DA850_LCD_BL_PIN, 0);

	/* disable lcd power */
	FUNC3(DA850_LCD_PWR_PIN, 0);

	/* enable lcd power */
	FUNC3(DA850_LCD_PWR_PIN, 1);

	/* enable lcd backlight */
	FUNC3(DA850_LCD_BL_PIN, 1);

	return 0;
}