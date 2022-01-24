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
 int FUNC0 (char*,char*,int) ; 

__attribute__((used)) static int FUNC1(char *dest, int value, int denom)
{
	int frac = value % denom;
	int result = FUNC0(dest, "%d", value / denom);

	if (frac == 0)
		return result;
	dest[result++] = '.';

	do {
		denom /= 10;
		FUNC0(dest + result, "%d", frac / denom);
		result++;
		frac %= denom;
	} while (frac);

	dest[result++] = '\0';
	return result;
}