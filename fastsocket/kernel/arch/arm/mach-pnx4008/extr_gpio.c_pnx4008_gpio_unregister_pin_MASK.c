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
 int EFAULT ; 
 unsigned long FUNC0 (unsigned short) ; 
 size_t GPIO_INDEX ; 
 scalar_t__ FUNC1 (unsigned short) ; 
 scalar_t__ FUNC2 (unsigned short) ; 
 scalar_t__ FUNC3 (unsigned short) ; 
 scalar_t__ FUNC4 (unsigned short) ; 
 scalar_t__ FUNC5 (unsigned short) ; 
 size_t INP_INDEX ; 
 size_t MUX_INDEX ; 
 size_t OUTP_INDEX ; 
 unsigned long* access_map ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

int FUNC8(unsigned short pin)
{
	unsigned long bit = FUNC0(pin);
	int ret = -EFAULT;	/* Not registered */

	FUNC6();

	if (FUNC1(pin)) {
		if (~access_map[GPIO_INDEX] & bit)
			goto out;
		access_map[GPIO_INDEX] &= ~bit;
	} else if (FUNC5(pin)) {
		if (~access_map[GPIO_INDEX] & bit)
			goto out;
		access_map[GPIO_INDEX] &= ~bit;
	} else if (FUNC3(pin)) {
		if (~access_map[MUX_INDEX] & bit)
			goto out;
		access_map[MUX_INDEX] &= ~bit;
	} else if (FUNC4(pin)) {
		if (~access_map[OUTP_INDEX] & bit)
			goto out;
		access_map[OUTP_INDEX] &= ~bit;
	} else if (FUNC2(pin)) {
		if (~access_map[INP_INDEX] & bit)
			goto out;
		access_map[INP_INDEX] &= ~bit;
	} else
		goto out;
	ret = 0;

out:
	FUNC7();
	return ret;
}