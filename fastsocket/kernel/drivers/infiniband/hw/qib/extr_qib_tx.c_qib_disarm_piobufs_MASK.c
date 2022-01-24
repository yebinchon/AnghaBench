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
struct qib_devdata {int /*<<< orphan*/  pioavail_lock; int /*<<< orphan*/  pport; int /*<<< orphan*/  (* f_sendctrl ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  pio_need_disarm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct qib_devdata *dd, unsigned first, unsigned cnt)
{
	unsigned long flags;
	unsigned i;
	unsigned last;

	last = first + cnt;
	FUNC2(&dd->pioavail_lock, flags);
	for (i = first; i < last; i++) {
		FUNC1(i, dd->pio_need_disarm);
		dd->f_sendctrl(dd->pport, FUNC0(i));
	}
	FUNC3(&dd->pioavail_lock, flags);
}