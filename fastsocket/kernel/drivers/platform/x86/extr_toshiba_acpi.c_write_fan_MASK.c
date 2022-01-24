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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 unsigned long EFAULT ; 
 unsigned long EINVAL ; 
 int /*<<< orphan*/  HCI_FAN ; 
 scalar_t__ HCI_SUCCESS ; 
 int force_fan ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int FUNC1 (char const*,char*,int*) ; 

__attribute__((used)) static unsigned long FUNC2(const char *buffer, unsigned long count)
{
	int value;
	u32 hci_result;

	if (FUNC1(buffer, " force_on : %i", &value) == 1 &&
	    value >= 0 && value <= 1) {
		FUNC0(HCI_FAN, value, &hci_result);
		if (hci_result != HCI_SUCCESS)
			return -EFAULT;
		else
			force_fan = value;
	} else {
		return -EINVAL;
	}

	return count;
}