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
typedef  unsigned long u64 ;
struct ioc3 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ioc3*) ; 
 int /*<<< orphan*/  FUNC1 (struct ioc3*) ; 
 int /*<<< orphan*/  FUNC2 (struct ioc3*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ioc3*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static u64 FUNC5(struct ioc3 *ioc3, int *last)
{
	int a, b, index, disc;
	u64 address = 0;

	FUNC1(ioc3);
	/* Search ROM.  */
	FUNC3(ioc3, 0xf0);

	/* Algorithm from ``Book of iButton Standards''.  */
	for (index = 0, disc = 0; index < 64; index++) {
		a = FUNC0(ioc3);
		b = FUNC0(ioc3);

		if (a && b) {
			FUNC4("NIC search failed (not fatal).\n");
			*last = 0;
			return 0;
		}

		if (!a && !b) {
			if (index == *last) {
				address |= 1UL << index;
			} else if (index > *last) {
				address &= ~(1UL << index);
				disc = index;
			} else if ((address & (1UL << index)) == 0)
				disc = index;
			FUNC2(ioc3, address & (1UL << index));
			continue;
		} else {
			if (a)
				address |= 1UL << index;
			else
				address &= ~(1UL << index);
			FUNC2(ioc3, a);
			continue;
		}
	}

	*last = disc;

	return address;
}