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
struct qib_devdata {int /*<<< orphan*/  pcidev; TYPE_1__* cspec; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_msix_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_devdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct qib_devdata *dd)
{
	if (!dd->cspec->num_msix_entries)
		return 0; /* already using INTx */

	FUNC1(dd->pcidev,
		"MSIx interrupt not detected, trying INTx interrupts\n");
	FUNC0(dd);
	FUNC2(dd->pcidev);
	FUNC3(dd, 0);
	return 1;
}