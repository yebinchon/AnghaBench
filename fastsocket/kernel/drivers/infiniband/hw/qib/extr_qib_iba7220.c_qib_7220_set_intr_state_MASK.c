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
typedef  scalar_t__ u32 ;
struct qib_devdata {int flags; } ;

/* Variables and functions */
 int QIB_BADINTR ; 
 int /*<<< orphan*/  kr_intclear ; 
 int /*<<< orphan*/  kr_intmask ; 
 int /*<<< orphan*/  FUNC0 (struct qib_devdata*,int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static void FUNC1(struct qib_devdata *dd, u32 enable)
{
	if (enable) {
		if (dd->flags & QIB_BADINTR)
			return;
		FUNC0(dd, kr_intmask, ~0ULL);
		/* force re-interrupt of any pending interrupts. */
		FUNC0(dd, kr_intclear, 0ULL);
	} else
		FUNC0(dd, kr_intmask, 0ULL);
}