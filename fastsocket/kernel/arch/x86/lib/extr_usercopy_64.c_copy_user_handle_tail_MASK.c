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
 scalar_t__ FUNC0 (char,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (char,int /*<<< orphan*/ ,int) ; 

unsigned long
FUNC2(char *to, char *from, unsigned len, unsigned zerorest)
{
	char c;
	unsigned zero_len;

	for (; len; --len) {
		if (FUNC0(c, from++, sizeof(char)))
			break;
		if (FUNC1(c, to++, sizeof(char)))
			break;
	}

	for (c = 0, zero_len = len; zerorest && zero_len; --zero_len)
		if (FUNC1(c, to++, sizeof(char)))
			break;
	return len;
}