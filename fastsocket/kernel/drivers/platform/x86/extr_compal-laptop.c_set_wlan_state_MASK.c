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
typedef  int u8 ;

/* Variables and functions */
 int /*<<< orphan*/  COMPAL_EC_COMMAND_WIRELESS ; 
 int EINVAL ; 
 int KILLSWITCH_MASK ; 
 int WLAN_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(int state)
{
	u8 result, value;

	FUNC0(COMPAL_EC_COMMAND_WIRELESS, &result);

	if ((result & KILLSWITCH_MASK) == 0)
		return -EINVAL;
	else {
		if (state)
			value = (u8) (result | WLAN_MASK);
		else
			value = (u8) (result & ~WLAN_MASK);
		FUNC1(COMPAL_EC_COMMAND_WIRELESS, value);
	}

	return 0;
}