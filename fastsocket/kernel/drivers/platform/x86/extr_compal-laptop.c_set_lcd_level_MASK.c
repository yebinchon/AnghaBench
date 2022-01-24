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
 int /*<<< orphan*/  COMPAL_EC_COMMAND_LCD_LEVEL ; 
 int COMPAL_LCD_LEVEL_MAX ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(int level)
{
	if (level < 0 || level >= COMPAL_LCD_LEVEL_MAX)
		return -EINVAL;

	FUNC0(COMPAL_EC_COMMAND_LCD_LEVEL, level);

	return 0;
}