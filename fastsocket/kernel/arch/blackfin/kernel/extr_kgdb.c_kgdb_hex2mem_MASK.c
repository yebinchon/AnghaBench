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
 int FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(char *buf, char *mem, int count)
{
	char *tmp_raw, *tmp_hex;

	/*
	 * We use the upper half of buf as an intermediate buffer for the
	 * raw memory that is converted from hex.
	 */
	tmp_raw = buf + count * 2;

	tmp_hex = tmp_raw - 1;
	while (tmp_hex >= buf) {
		tmp_raw--;
		*tmp_raw = FUNC1(*tmp_hex--);
		*tmp_raw |= FUNC1(*tmp_hex--) << 4;
	}

	return FUNC0(mem, tmp_raw, count);
}