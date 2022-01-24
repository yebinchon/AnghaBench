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
struct driver_data {scalar_t__ mmio; int /*<<< orphan*/  port; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ HOST_CTL ; 
 int HOST_IRQ_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct driver_data*) ; 
 scalar_t__ FUNC2 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct driver_data *dd)
{
	/* Perform any needed hardware setup steps */
	FUNC1(dd);

	/* Reset the HBA */
	if (FUNC2(dd) != 0) {
		FUNC0(&dd->pdev->dev,
			"Unable to reset the HBA\n");
		return -EFAULT;
	}

	/*
	 * Enable the port, DMA engine, and FIS reception specific
	 * h/w in controller.
	 */
	FUNC3(dd->port);
	FUNC4(dd->port);

	/* Enable interrupts on the HBA.*/
	FUNC6(FUNC5(dd->mmio + HOST_CTL) | HOST_IRQ_EN,
			dd->mmio + HOST_CTL);

	return 0;
}