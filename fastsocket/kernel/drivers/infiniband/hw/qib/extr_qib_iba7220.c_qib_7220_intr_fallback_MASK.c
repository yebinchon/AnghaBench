#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qib_devdata {TYPE_2__* pcidev; TYPE_1__* cspec; int /*<<< orphan*/  msi_lo; } ;
struct TYPE_5__ {int /*<<< orphan*/  irq; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_devdata*) ; 

__attribute__((used)) static int FUNC4(struct qib_devdata *dd)
{
	if (!dd->msi_lo)
		return 0;

	FUNC1(dd->pcidev,
		"MSI interrupt not detected, trying INTx interrupts\n");
	FUNC0(dd);
	FUNC2(dd->pcidev);
	/*
	 * Some newer kernels require free_irq before disable_msi,
	 * and irq can be changed during disable and INTx enable
	 * and we need to therefore use the pcidev->irq value,
	 * not our saved MSI value.
	 */
	dd->cspec->irq = dd->pcidev->irq;
	FUNC3(dd);
	return 1;
}