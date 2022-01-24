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
 int GPIO_IN ; 
 int GPIO_OUT ; 
 int* IOP3XX_GPOE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

void FUNC2(int line, int direction)
{
	unsigned long flags;

	FUNC1(flags);
	if (direction == GPIO_IN) {
		*IOP3XX_GPOE |= 1 << line;
	} else if (direction == GPIO_OUT) {
		*IOP3XX_GPOE &= ~(1 << line);
	}
	FUNC0(flags);
}