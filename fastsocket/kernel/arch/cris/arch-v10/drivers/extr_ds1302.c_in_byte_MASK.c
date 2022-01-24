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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static unsigned char
FUNC4(void) 
{
	unsigned char x = 0;
	int i;

	/* Read byte. Bits come LSB first, on the falling edge of SCL.
	 * Assume SDA is in input direction already.
	 */
	FUNC1(0);

	for (i = 8; i--;) {
		FUNC0(0);
		FUNC3(1);
		x >>= 1;
		x |= (FUNC2() << 7);
		FUNC0(1);
		FUNC3(1);
	}

	return x;
}