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
 int EINVAL ; 
 int HCI_LCD_BRIGHTNESS_LEVELS ; 
 int FUNC0 (int) ; 
 int FUNC1 (char const*,char*,int*) ; 

__attribute__((used)) static unsigned long FUNC2(const char *buffer, unsigned long count)
{
	int value;
	int ret;

	if (FUNC1(buffer, " brightness : %i", &value) == 1 &&
	    value >= 0 && value < HCI_LCD_BRIGHTNESS_LEVELS) {
		ret = FUNC0(value);
		if (ret == 0)
			ret = count;
	} else {
		ret = -EINVAL;
	}
	return ret;
}