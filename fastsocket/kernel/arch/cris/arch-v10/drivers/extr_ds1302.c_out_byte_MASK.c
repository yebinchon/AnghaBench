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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(unsigned char x) 
{
	int i;
	FUNC1(1);
	for (i = 8; i--;) {
		/* The chip latches incoming bits on the rising edge of SCL. */
		FUNC0(0);
		FUNC2(x & 1);
		FUNC3(1);
		FUNC0(1);
		FUNC3(1);
		x >>= 1;
	}
	FUNC1(0);
}