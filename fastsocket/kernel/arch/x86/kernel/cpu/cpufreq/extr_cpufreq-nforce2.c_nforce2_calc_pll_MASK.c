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
 int FUNC0 (unsigned char,unsigned char) ; 
 unsigned int FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(unsigned int fsb)
{
	unsigned char xmul, xdiv;
	unsigned char mul = 0, div = 0;
	int tried = 0;

	/* Try to calculate multiplier and divider up to 4 times */
	while (((mul == 0) || (div == 0)) && (tried <= 3)) {
		for (xdiv = 2; xdiv <= 0x80; xdiv++)
			for (xmul = 1; xmul <= 0xfe; xmul++)
				if (FUNC1(FUNC0(xmul, xdiv)) ==
				    fsb + tried) {
					mul = xmul;
					div = xdiv;
				}
		tried++;
	}

	if ((mul == 0) || (div == 0))
		return -1;

	return FUNC0(mul, div);
}