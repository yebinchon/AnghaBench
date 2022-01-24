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
struct qib_devdata {scalar_t__ int_counter; int /*<<< orphan*/  intrchk_timer; TYPE_1__* pcidev; int /*<<< orphan*/  (* f_intr_fallback ) (struct qib_devdata*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_devdata*) ; 

__attribute__((used)) static void FUNC3(unsigned long opaque)
{
	struct qib_devdata *dd = (struct qib_devdata *) opaque;

	if (!dd)
		return; /* being torn down */

	/*
	 * If we don't have a lid or any interrupts, let the user know and
	 * don't bother checking again.
	 */
	if (dd->int_counter == 0) {
		if (!dd->f_intr_fallback(dd))
			FUNC0(&dd->pcidev->dev,
				"No interrupts detected, not usable.\n");
		else /* re-arm the timer to see if fallback works */
			FUNC1(&dd->intrchk_timer, jiffies + HZ/2);
	}
}