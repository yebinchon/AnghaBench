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
struct ipath_devdata {scalar_t__ ipath_int_counter; int /*<<< orphan*/  ipath_intrchk_timer; TYPE_1__* pcidev; int /*<<< orphan*/  (* ipath_f_intr_fallback ) (struct ipath_devdata*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ipath_devdata*) ; 

__attribute__((used)) static void FUNC4(unsigned long opaque)
{
	struct ipath_devdata *dd = (struct ipath_devdata *) opaque;

	if (!dd)
		return; /* being torn down */

	/*
	 * If we don't have any interrupts, let the user know and
	 * don't bother checking again.
	 */
	if (dd->ipath_int_counter == 0) {
		if (!dd->ipath_f_intr_fallback(dd))
			FUNC0(&dd->pcidev->dev, "No interrupts detected, "
				"not usable.\n");
		else /* re-arm the timer to see if fallback works */
			FUNC2(&dd->ipath_intrchk_timer, jiffies + HZ/2);
	} else
		FUNC1(VERBOSE, "%u interrupts at timer check\n",
			dd->ipath_int_counter);
}