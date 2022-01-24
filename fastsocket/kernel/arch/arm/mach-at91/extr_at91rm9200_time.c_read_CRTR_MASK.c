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
 int /*<<< orphan*/  AT91_ST_CRTR ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned long FUNC1(void)
{
	unsigned long x1, x2;

	x1 = FUNC0(AT91_ST_CRTR);
	do {
		x2 = FUNC0(AT91_ST_CRTR);
		if (x1 == x2)
			break;
		x1 = x2;
	} while (1);
	return x1;
}