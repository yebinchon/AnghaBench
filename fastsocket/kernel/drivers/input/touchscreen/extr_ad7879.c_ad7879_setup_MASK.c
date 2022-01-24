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
struct ad7879 {int cmd_crtl3; int cmd_crtl2; int gpio_init; int cmd_crtl1; int /*<<< orphan*/  bus; int /*<<< orphan*/  pen_down_acc_interval; int /*<<< orphan*/  acquisition_time; int /*<<< orphan*/  first_conversion_delay; int /*<<< orphan*/  median; int /*<<< orphan*/  averaging; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AD7879_AUXVBATMASK_BIT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int AD7879_DFR ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int AD7879_GPIOALERTMASK_BIT ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int AD7879_MODE_INT ; 
 int AD7879_MODE_SEQ1 ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AD7879_PM_DYN ; 
 int /*<<< orphan*/  AD7879_REG_CTRL1 ; 
 int /*<<< orphan*/  AD7879_REG_CTRL2 ; 
 int /*<<< orphan*/  AD7879_REG_CTRL3 ; 
 int AD7879_TEMPMASK_BIT ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int AD7879_XPLUS_BIT ; 
 int AD7879_YPLUS_BIT ; 
 int AD7879_Z1_BIT ; 
 int AD7879_Z2_BIT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct ad7879 *ts)
{
	ts->cmd_crtl3 = AD7879_YPLUS_BIT |
			AD7879_XPLUS_BIT |
			AD7879_Z2_BIT |
			AD7879_Z1_BIT |
			AD7879_TEMPMASK_BIT |
			AD7879_AUXVBATMASK_BIT |
			AD7879_GPIOALERTMASK_BIT;

	ts->cmd_crtl2 = FUNC4(AD7879_PM_DYN) | AD7879_DFR |
			FUNC1(ts->averaging) |
			FUNC3(ts->median) |
			FUNC2(ts->first_conversion_delay) |
			ts->gpio_init;

	ts->cmd_crtl1 = AD7879_MODE_INT | AD7879_MODE_SEQ1 |
			FUNC0(ts->acquisition_time) |
			FUNC5(ts->pen_down_acc_interval);

	FUNC6(ts->bus, AD7879_REG_CTRL2, ts->cmd_crtl2);
	FUNC6(ts->bus, AD7879_REG_CTRL3, ts->cmd_crtl3);
	FUNC6(ts->bus, AD7879_REG_CTRL1, ts->cmd_crtl1);
}