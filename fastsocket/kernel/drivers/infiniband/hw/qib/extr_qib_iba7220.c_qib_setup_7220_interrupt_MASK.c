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
struct qib_devdata {TYPE_1__* cspec; scalar_t__ msi_lo; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  QIB_DRV_NAME ; 
 int /*<<< orphan*/  qib_7220intr ; 
 int /*<<< orphan*/  FUNC0 (struct qib_devdata*,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qib_devdata*) ; 

__attribute__((used)) static void FUNC2(struct qib_devdata *dd)
{
	if (!dd->cspec->irq)
		FUNC0(dd,
			"irq is 0, BIOS error?  Interrupts won't work\n");
	else {
		int ret = FUNC1(dd->cspec->irq, qib_7220intr,
			dd->msi_lo ? 0 : IRQF_SHARED,
			QIB_DRV_NAME, dd);

		if (ret)
			FUNC0(dd,
				"Couldn't setup %s interrupt (irq=%d): %d\n",
				dd->msi_lo ?  "MSI" : "INTx",
				dd->cspec->irq, ret);
	}
}