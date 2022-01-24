#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  (* pv_halt ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  prom_lock ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* romvec ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4(void)
{
	unsigned long flags;
again:
	FUNC1(&prom_lock, flags);
	(*(romvec->pv_halt))();
	/* Never get here. */
	FUNC0();
	FUNC2(&prom_lock, flags);
	goto again; /* PROM is out to get me -DaveM */
}