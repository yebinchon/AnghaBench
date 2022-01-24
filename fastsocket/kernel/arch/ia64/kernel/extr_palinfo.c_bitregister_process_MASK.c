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
typedef  int u64 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 

__attribute__((used)) static char *
FUNC2(char *p, u64 *reg_info, int max)
{
	int i, begin, skip = 0;
	u64 value = reg_info[0];

	value >>= i = begin = FUNC0(value) - 1;

	for(; i < max; i++ ) {

		if (i != 0 && (i%64) == 0) value = *++reg_info;

		if ((value & 0x1) == 0 && skip == 0) {
			if (begin  <= i - 2)
				p += FUNC1(p, "%d-%d ", begin, i-1);
			else
				p += FUNC1(p, "%d ", i-1);
			skip  = 1;
			begin = -1;
		} else if ((value & 0x1) && skip == 1) {
			skip = 0;
			begin = i;
		}
		value >>=1;
	}
	if (begin > -1) {
		if (begin < 127)
			p += FUNC1(p, "%d-127", begin);
		else
			p += FUNC1(p, "127");
	}

	return p;
}