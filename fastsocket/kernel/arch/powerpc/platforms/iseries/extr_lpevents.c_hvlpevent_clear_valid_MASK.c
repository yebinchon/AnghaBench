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
struct HvLpEvent {int xSizeMinus1; } ;

/* Variables and functions */
 int IT_LP_EVENT_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (struct HvLpEvent*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct HvLpEvent * event)
{
	/* Tell the Hypervisor that we're done with this event.
	 * Also clear bits within this event that might look like valid bits.
	 * ie. on 64-byte boundaries.
	 */
	struct HvLpEvent *tmp;
	unsigned extra = ((event->xSizeMinus1 + IT_LP_EVENT_ALIGN) /
				IT_LP_EVENT_ALIGN) - 1;

	switch (extra) {
	case 3:
		tmp = (struct HvLpEvent*)((char*)event + 3 * IT_LP_EVENT_ALIGN);
		FUNC0(tmp);
	case 2:
		tmp = (struct HvLpEvent*)((char*)event + 2 * IT_LP_EVENT_ALIGN);
		FUNC0(tmp);
	case 1:
		tmp = (struct HvLpEvent*)((char*)event + 1 * IT_LP_EVENT_ALIGN);
		FUNC0(tmp);
	}

	FUNC1();

	FUNC0(event);
}