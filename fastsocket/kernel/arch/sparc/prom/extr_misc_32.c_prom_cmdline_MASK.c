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
struct TYPE_2__ {int /*<<< orphan*/  (* pv_abort ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AUXIO_LED ; 
 int /*<<< orphan*/  prom_lock ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* romvec ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void
FUNC5(void)
{
	extern void FUNC0(void);
	extern void FUNC0(void);
	unsigned long flags;

	FUNC2(&prom_lock, flags);
	FUNC0();
	(*(romvec->pv_abort))();
	FUNC0();
	FUNC0();
	FUNC3(&prom_lock, flags);
	FUNC1(AUXIO_LED, 0);
}