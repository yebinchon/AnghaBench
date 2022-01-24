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
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 char FUNC2 (char) ; 

__attribute__((used)) static int FUNC3(char **cp, unsigned int *val, int min_digit,
		    int max_digit, int max_val)
{
	int diff;
	unsigned int value;

	diff = 0;
	*val = 0;

	while (FUNC1(**cp) && (diff <= max_digit)) {

		if (FUNC0(**cp))
			value = **cp - '0';
		else
			value = FUNC2(**cp) - 'a' + 10;
		*val = *val * 16 + value;
		(*cp)++;
		diff++;
	}

	if ((diff < min_digit) || (diff > max_digit) || (*val > max_val))
		return 1;

	return 0;
}