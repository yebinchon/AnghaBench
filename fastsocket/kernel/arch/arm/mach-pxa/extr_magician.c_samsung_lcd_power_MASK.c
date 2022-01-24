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
struct fb_var_screeninfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EGPIO_MAGICIAN_LCD_POWER ; 
 int /*<<< orphan*/  GPIO104_MAGICIAN_LCD_POWER_1 ; 
 int /*<<< orphan*/  GPIO105_MAGICIAN_LCD_POWER_2 ; 
 int /*<<< orphan*/  GPIO106_MAGICIAN_LCD_POWER_3 ; 
 int /*<<< orphan*/  GPIO75_MAGICIAN_SAMSUNG_POWER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int system_rev ; 

__attribute__((used)) static void FUNC3(int on, struct fb_var_screeninfo *si)
{
	FUNC2("Samsung LCD power\n");

	if (on) {
		FUNC2("on\n");
		if (system_rev < 3)
			FUNC0(GPIO75_MAGICIAN_SAMSUNG_POWER, 1);
		else
			FUNC0(EGPIO_MAGICIAN_LCD_POWER, 1);
		FUNC1(10);
		FUNC0(GPIO106_MAGICIAN_LCD_POWER_3, 1);
		FUNC1(10);
		FUNC0(GPIO104_MAGICIAN_LCD_POWER_1, 1);
		FUNC1(30);
		FUNC0(GPIO105_MAGICIAN_LCD_POWER_2, 1);
		FUNC1(10);
	} else {
		FUNC2("off\n");
		FUNC1(10);
		FUNC0(GPIO105_MAGICIAN_LCD_POWER_2, 0);
		FUNC1(30);
		FUNC0(GPIO104_MAGICIAN_LCD_POWER_1, 0);
		FUNC1(10);
		FUNC0(GPIO106_MAGICIAN_LCD_POWER_3, 0);
		FUNC1(10);
		if (system_rev < 3)
			FUNC0(GPIO75_MAGICIAN_SAMSUNG_POWER, 0);
		else
			FUNC0(EGPIO_MAGICIAN_LCD_POWER, 0);
	}
}