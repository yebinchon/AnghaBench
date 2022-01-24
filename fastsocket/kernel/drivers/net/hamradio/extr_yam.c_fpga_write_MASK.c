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
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int LSR_TSRE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned char MCR_DTR ; 
 unsigned char MCR_OUT1 ; 
 unsigned char MCR_OUT2 ; 
 unsigned char MCR_RTS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,unsigned long) ; 

__attribute__((used)) static int FUNC6(int iobase, unsigned char wrd)
{
	unsigned char bit;
	int k;
	unsigned long timeout = jiffies + HZ / 10;

	for (k = 0; k < 8; k++) {
		bit = (wrd & 0x80) ? (MCR_RTS | MCR_DTR) : MCR_DTR;
		FUNC4(bit | MCR_OUT1 | MCR_OUT2, FUNC1(iobase));
		wrd <<= 1;
		FUNC4(0xfc, FUNC2(iobase));
		while ((FUNC3(FUNC0(iobase)) & LSR_TSRE) == 0)
			if (FUNC5(jiffies, timeout))
				return -1;
	}

	return 0;
}