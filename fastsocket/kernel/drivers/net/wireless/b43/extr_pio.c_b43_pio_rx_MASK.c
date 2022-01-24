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
struct b43_pio_rxqueue {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct b43_pio_rxqueue*) ; 

void FUNC3(struct b43_pio_rxqueue *q)
{
	unsigned int count = 0;
	bool stop;

	while (1) {
		stop = (FUNC2(q) == 0);
		if (stop)
			break;
		FUNC1();
		if (FUNC0(++count > 10000))
			break;
	}
}