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
 int /*<<< orphan*/  GPIO110_HX4700_LCD_LVDD_3V3_ON ; 
 int /*<<< orphan*/  GPIO111_HX4700_LCD_AVDD_3V3_ON ; 
 int /*<<< orphan*/  GPIO112_HX4700_LCD_N2V7_7V3_ON ; 
 int /*<<< orphan*/  GPIO59_HX4700_LCD_PC1 ; 
 int /*<<< orphan*/  GPIO62_HX4700_LCD_nRESET ; 
 int /*<<< orphan*/  GPIO70_HX4700_LCD_SLIN1 ; 
 int /*<<< orphan*/  GPIO84_HX4700_LCD_SQN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(void)
{
	FUNC0(GPIO84_HX4700_LCD_SQN, 1);
	FUNC0(GPIO110_HX4700_LCD_LVDD_3V3_ON, 0);
	FUNC0(GPIO111_HX4700_LCD_AVDD_3V3_ON, 0);
	FUNC0(GPIO70_HX4700_LCD_SLIN1, 0);
	FUNC0(GPIO62_HX4700_LCD_nRESET, 0);
	FUNC1(10);
	FUNC0(GPIO59_HX4700_LCD_PC1, 0);
	FUNC0(GPIO110_HX4700_LCD_LVDD_3V3_ON, 0);
	FUNC1(20);

	FUNC0(GPIO110_HX4700_LCD_LVDD_3V3_ON, 1);
	FUNC1(5);
	FUNC0(GPIO111_HX4700_LCD_AVDD_3V3_ON, 1);

	/* FIXME: init w3220 registers here */

	FUNC1(5);
	FUNC0(GPIO70_HX4700_LCD_SLIN1, 1);
	FUNC1(10);
	FUNC0(GPIO62_HX4700_LCD_nRESET, 1);
	FUNC1(10);
	FUNC0(GPIO59_HX4700_LCD_PC1, 1);
	FUNC1(10);
	FUNC0(GPIO112_HX4700_LCD_N2V7_7V3_ON, 1);
}