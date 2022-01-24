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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

__attribute__((used)) static void FUNC1(int start, unsigned long which,
				    unsigned long mask)
{
	int i;

	which &= ~mask;

	for (i = 0; i <= 31; i++) {
		if (which & (1L<<i)) {
			FUNC0("IRQ %d asserted at resume\n", start+i);
		}
	}
}